#!/usr/bin/env sh
#-------------------------------------------------------------------------------
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
# (c) jumpbit.com, 2021, Switzerland
#-------------------------------------------------------------------------------

# assuming initial setup is done as stated in https://linuxgsm.com/lgsm/rustserver/
# assuming installed rustserver mods-install - install mod rustoxide
# change the lgsm/config-lgsm/rustserver/common.cfg - especially the rcon pwd

# environment
export RUST=~/serverfiles

# stop running server
./rustserver stop

# backup config
./rustserver backup
tar cvf rustserver-config.tar $RUST/oxide/config/* $RUST/server/rustserver/cfg/*cfg

# update lgsm, rustserver and mod through lgsm
./rustserver update-lgsm
./rustserver update
./rustserver mods-update
./setup-rust-umods.sh

# start server
./rustserver start
