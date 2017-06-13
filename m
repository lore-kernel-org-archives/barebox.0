Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from sonic328-14.consmr.mail.ne1.yahoo.com ([66.163.191.37])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKn8q-0000Mi-Ql
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 14:50:07 +0000
Date: Tue, 13 Jun 2017 14:49:36 +0000 (UTC)
From: B Gol <behnam_golds@yahoo.com>
Message-ID: <1982917789.2703351.1497365376201@mail.yahoo.com>
MIME-Version: 1.0
References: <1982917789.2703351.1497365376201.ref@mail.yahoo.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: B Gol <behnam_golds@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to use eMMC/SD DOS partitions as backend for the state
 framework?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

Thanks for the quick answer and putting me into the right

direction.

All I was trying to do was getting the Rauc update system

work with barebox state framework , and it took almost two

weeks of my life to get it done. Now that it is working as

expected, it is time to give back to the community, or in

other words "state framework for dummies" .


##################################################


First of all this is what I have added or modified in my


dts file (I have a beaglebone black so that would be

the am335x-boneblack.dts file in the barebox source path) :


##################################################


*** I modified this part :



&mmc1 {

vmmc-supply = <&vmmcsd_fixed>;


mmc1_state: state@0x96ad000 {

reg = <0x96ad000 0x4fffff>;

label = "state-sd";

};

};


*** and added this part to the end of the dts file:



/ {

state:  state {

magic = <0x27031977>;

compatible = "barebox,state";

backend-type = "raw";

backend-storage-type = "circular";

backend-stridesize = <0x500>;

backend = <&mmc1_state>;

bootstate {

last_chosen {

reg = <0x5 0x4>;

type = "uint32";

default = <0x1>;

};

system0.boot {

reg = <0x20 0xa>;

type = "string";

default = "system0";

};

system0.remaining_attempts {

reg = <0x2b 0x4>;

type = "uint32";

default = <0x3>;

};

system0.priority {

reg = <0x31 0x4>;

type = "uint32";

default = <0x15>;

};


system1.boot {

reg = <0x60 0xa>;

type = "string";

default = "system1";

};

system1.remaining_attempts {

reg = <0x6b 0x4>;

type = "uint32";

default = <0x3>;

};

system1.priority {

reg = <0x76 0x4>;

type = "uint32";

default = <0x14>;

};

};

};


aliases {

state = &state;

};


};

##################################################


1) The &mmc1 was already in the dts file , I just added

the mmc1_state: ... {...} part to it.


2) The reg = <0x96ad000 0x4fffff> part was also a


challenge for me to figure out. Turned out those

numbers are there to specify the boundaries of the

state partition. You can either find it with fdisk -l -u

in your linux shell or with the devinfo command in the barebox

shell (second approach is recommended since it is already in Hex

and bytes compared to Dec and sectors with fdisk )



this is part of the output I got from devinfo:


`-- 0x096ad000-0x09bacfff ( 5 MiB): /dev/mmc0.6


(do not confuse mmc0 in the output with mmc1 in

your dts file, mmc0 is just an alias to mmc1.

so if you want to specify mmc1 you have to write


mmc2 in the dts file)

the first number would be the start address , and

last_address minus first_address would result in


size of your intended partition


0x09bacff - 0x096ad000 = 0x4fffff


hence 

reg = <0x96ad000 0x4fffff>;


3) For the *types I first started with "dtb" and "direct",

but got very weird responses (some gibberish on the console after

every reboot and some weird characters in my state variables) so I

changed them to "raw" and "circular" and I haven't seen any of


the weirdness since.




4) You also have to create some nv variables to get it to work:

from the barebox shell :


nv bootchooser.state_prefix="state.bootstate"

nv boot.default="bootchooser net"


or you could do it before compiling the barebox:


make a file named "bootchooser.state_prefix" containing


"state.bootstate" string.

make a file named "boot.default" containing "bootchooser net"

string.(you can change net with recovery or anything you have in mind,

barebox will try to boot net if the bootchooser fails, or you could remove

it from the string altogether).


And put both of them in the following path of the barebox


source code:



/source-path/barebox-yyyy.mm.d/defaultenv/defaultenv-2-base/nv/



5) You also need to make system0 and system1 (based on your naming scheme


in the dts file) scripts in the following directory:


in the barebox environment:

/env/boot/


or in the source code path before compiling:


/source-path/barebox-yyyy.mm.d/defaultenv/boot/



I just put my boot scripts here for example:


system0 boot script:

##############################################################


#!/bin/sh


mount /dev/mmc0.1

global.bootm.image=/mnt/mmc0.1/boot/zImage-4.8.12

global.bootm.oftree=/mnt/mmc0.1/boot/devicetree-zImage-am335x-boneblack.dtb

global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4"

global linux.bootargs.base="console=ttyO0,115200"

##############################################################


system1 boot script:


##############################################################


#!/bin/sh


mount /dev/mmc0.2

global.bootm.image=/mnt/mmc0.2/boot/zImage-4.8.12

global.bootm.oftree=/mnt/mmc0.2/boot/devicetree-zImage-am335x-boneblack.dtb

global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext4"

global linux.bootargs.base="console=ttyO0,115200"


##############################################################



I hope this helps some barebox noobies like me in the future.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
