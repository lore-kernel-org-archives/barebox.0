Delivery-date: Wed, 22 Dec 2021 15:07:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n02Gs-00Eiub-63
	for lore@lore.pengutronix.de; Wed, 22 Dec 2021 15:07:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n02Gq-0002VR-Dc
	for lore@pengutronix.de; Wed, 22 Dec 2021 15:07:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZZScTLTeqRbeA2drtgTKJ4SKx6/RReerUOTz1O92tQ=; b=LHeQ6OX3sKi9Et
	qDdeJCIz6WvhhTOIMLmlET9whPOJAFIfQTnpktsYj0KJ/MjAS9hvJ9aYjYCrfJGooQC22LYzKpImC
	gT6Lu2pMeMFyUibSA31V3Z2WPWqhsVWvHHUV+v66vCNqYZ7BHJck8+pQcQqJqhRojf7gm9h2R0gvu
	A1PB/vfSudI885RQGoAONjPnmo12l2P9BPLheRGuLc5s10w66uuystLQKIJ2KZgLy6mk8bl2SFl9j
	A0PNgIXkhrCQACYoQMQDsXVfkLyr1/PM+9FAOGfrFNOCVdbGMK2LfWEdfHXjAgnP/99h/6UoZmR6D
	Zz/XshtTlgARIwabmW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n02F9-00AdDx-Cr; Wed, 22 Dec 2021 14:05:23 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n02F2-00AdC3-HE
 for barebox@lists.infradead.org; Wed, 22 Dec 2021 14:05:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id C7D364038D;
 Wed, 22 Dec 2021 15:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1640181910;
 bh=DRMMygE4x51CpaeI6IOe23M9mlkvSxzMcRiJIg259Sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S6b5agkstW4bYvWwgEFw+ufk/HMoYfPe5KguwB6luhbSGLjHGf3tkzTXEtwYqY7tn
 V+lksUBQaOUj5ktceig8Z0mnQPaqDlGo1y0kz1NIuTqmp0ncl3NVE714BoB67RjABo
 qhnKvH3Xhjm+1Epj1SkdX364zdr+W83cq2anwv0mnrDXUrZyd7iie/+KYQWMRZp9Dv
 jUldluAk8+nTlyASbkVVTwmdAba+ykS6Bvqx8ymMgQAeOGxR/DIrlaiQR4QUjjga5Q
 AxugYZJEjZFiIDvQ5VVGTVYlHcoNK4aMDRox9jmHJaYPtb8NuDpdnu090tM2RNP+cs
 0HSzJa+NEYQlA==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPuNXvUk2tsv; Wed, 22 Dec 2021 15:05:09 +0100 (CET)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id DD4474017B;
 Wed, 22 Dec 2021 15:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1640181909;
 bh=DRMMygE4x51CpaeI6IOe23M9mlkvSxzMcRiJIg259Sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FsROTIwcUVB+eFin8SjHI5wF7O42uQWvIMuLqQf2/4p+O7TLGwSxf/z0qVLB7OVFH
 AgJqXjznyZC7SMKtOvORCZZWmljzXPmLRaCWVyfdthI1jxratB23RHw3QJT+uJOzjg
 3mQpuDlEMcZNMjVuzs1bWwFizeH/2KLrHfdwslAIfKyg9K9Nt3z6vi6g/xGST3wkFG
 2CAYKrlgt2gyRU6gVYnGsoIQhRZsiyrPbrBwIakrGq6EJiDHSBo4NIcIbnN0FP9oKB
 Ocds0SSuajZvowO6L18aJ4qE+Zh6cRVHCkZXkYcEgdEExV3QI7IHl1uXpEufBTjmNT
 9dN0DNQ+PpQPg==
Date: Wed, 22 Dec 2021 15:05:07 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YcMwk6mncQ8fSwTJ@Hephaistos>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
 <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
 <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
 <YbyGBHs1YWVcgE5X@Hephaistos>
 <68358567-7665-bd5c-00fe-b410b4ec2518@pengutronix.de>
 <YbyczaAWK6juc0VO@Hephaistos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YbyczaAWK6juc0VO@Hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_060517_090839_76734EAA 
X-CRM114-Status: GOOD (  10.30  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I switched from doing the state in the onboard EEPROM (as said, it
is write protected in production use) to save the state in a dead space
in the onboard eMMC chip between MBR and first partition:

/ {
	aliases {
		state =3D &state_eeprom;
	};

	state_eeprom: state_eeprom {
		#address-cells =3D <1>;
		#size-cells =3D <1>;
		compatible =3D "barebox,state";
		magic =3D <0xcafebabe>;
		backend-type =3D "raw";
		backend =3D <&backend_state_mmc2>;
		backend-storage-type =3D "direct";
		backend-stridesize =3D <54>;
		last_chosen {
			reg =3D <0x0 0x4>;
			type =3D "uint32";
		};
		system0 {
			#address-cells =3D <1>;
			#size-cells =3D <1>;
			remaining_attempts {
				reg =3D <0x4 0x4>;
				type =3D "uint32";
				default =3D <3>;
			};
			priority {
				reg =3D <0x8 0x4>;
				type =3D "uint32";
				default =3D <21>;
			};
			ok {
				reg =3D <0xc 0x4>;
				type =3D "uint32";
				default =3D <0>;
			};
		};
		system1 {
			#address-cells =3D <1>;
			#size-cells =3D <1>;
			remaining_attempts {
				reg =3D <0x10 0x4>;
				type =3D "uint32";
				default =3D <3>;
			};
			priority {
				reg =3D <0x14 0x4>;
				type =3D "uint32";
				default =3D <20>;
			};
			ok {
				reg =3D <0x18 0x4>;
				type =3D "uint32";
				default =3D <0>;
			};
		};
	};
};

&mmc2 {
	backend_state_mmc2: part@1000 {
		label =3D "state";
		reg =3D <0x1000 0x1000>;
	};
};

This looks good so far:

barebox boot-up excerpt:

mmc1: detected MMC card version 5.1
mmc1: registered mmc1
state: New state registered 'state'
state: Using bucket 0@0x00000000

devinfo state:

Parameters:
  dirty: 0 (type: bool)
  init_from_defaults: 0 (type: bool)
  last_chosen: 2 (type: uint32)
  save_on_shutdown: 1 (type: bool)
  system0.ok: 0 (type: uint32)
  system0.priority: 21 (type: uint32)
  system0.remaining_attempts: 0 (type: uint32)
  system1.ok: 0 (type: uint32)
  system1.priority: 20 (type: uint32)
  system1.remaining_attempts: 1 (type: uint32)

bootchooser -i:

Good targets (first will be booted next):
system1
    id: 2
    priority: 20
    default_priority: 1
    remaining attempts: 1
    default attempts: 3
    boot: 'system1'

Disabled targets:
system0
    id: 1
    priority: 21
    default_priority: 1
    remaining attempts: 0
    default attempts: 3
    boot: 'system0'
    disabled due to remaining attempts =3D 0

last booted target: system1

Compiled in (relevant) variables:

* boot.default: bootchooser insidem2m_1 insidem2m_2
  boot.watchdog_timeout: 0
  bootchooser.default_attempts: 3
  bootchooser.default_priority: 1
  bootchooser.disable_on_zero_attempts: 0
  bootchooser.reset_attempts:  (list: "power-on", "all-zero")
  bootchooser.reset_priorities: =

  bootchooser.retry: 0
* bootchooser.state_prefix: state
* bootchooser.targets: system0 system1

devinfo excerpt:

            `-- 481d82fc.target-module@d8000.of
               `-- 481d8000.mmc@0.of
                  `-- mmc1
                     `-- 0x00000000-0xe3ffffff (   3.6 GiB): /dev/mmc1
                     `-- 0x00100000-0x010fffff (    16 MiB): /dev/mmc1.0
                     `-- 0x01100000-0x4ddfffff (   1.2 GiB): /dev/mmc1.1
                     `-- 0x4de00000-0x9aafffff (   1.2 GiB): /dev/mmc1.2
                     `-- 0x9ab00000-0xe3ffffff (   1.1 GiB): /dev/mmc1.3
                     `-- 0x00001000-0x00001fff (     4 KiB): /dev/mmc1.state
                     `-- fat0

boot:

Booting entry 'bootchooser'
Booting entry 'system1'
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
mounted /dev/mmc1.2 on /mnt/mmc1.2
[...]


The userspace is no amused, however:

rauc status output:

(rauc:583): rauc-WARNING **: 18:51:57.389: Failed getting primary slot: Fai=
led getting primary slot: No content to read

=3D=3D=3D System Info =3D=3D=3D
Compatible:  insidem2m-s
Variant:
Booted from: rootfs.1 (system1)

=3D=3D=3D Bootloader =3D=3D=3D
Activated: (null) ((null))

=3D=3D=3D Slot States =3D=3D=3D
o [rootfs.1] (/dev/mmcblk0p3, ext4, booted)
	bootname: system1
	mounted: /
	boot status: bad

o [rootfs.0] (/dev/mmcblk0p2, ext4, inactive)
	bootname: system0
	boot status: bad


/etc/rauc/system.conf:

[system]
compatible=3Dinsidem2m-s
bootloader=3Dbarebox

[keyring]
path=3Dca.cert.pem

[slot.rootfs.0]
device=3D/dev/mmcblk0p2
type=3Dext4
bootname=3Dsystem0

[slot.rootfs.1]
device=3D/dev/mmcblk0p3
type=3Dext4
bootname=3Dsystem1


barebox-state:

last_chosen=3D2
system0.remaining_attempts=3D0
system0.priority=3D21
system0.ok=3D0
system1.remaining_attempts=3D2
system1.priority=3D20
system1.ok=3D0


So rauc is not happy, is somethong wrong with the system.conf?


################ PLAN B ##################

I had a previous state device tree setup, which made userspace happy,
but not barebox. I had a parent bootstate section containing system0 and
system1:

/ {
	aliases {
		state =3D &state_eeprom;
	};

	state_eeprom: state_eeprom {
		#address-cells =3D <1>;
		#size-cells =3D <1>;
		compatible =3D "barebox,state";
		magic =3D <0xcafebabe>;
		backend-type =3D "raw";
		backend =3D <&backend_state_mmc2>;
		backend-storage-type =3D "direct";
		backend-stridesize =3D <54>;
		bootstate {
			#address-cells =3D <1>;
			#size-cells =3D <1>;
			last_chosen {
				reg =3D <0x0 0x4>;
				type =3D "uint32";
			};
			system0 {
				#address-cells =3D <1>;
				#size-cells =3D <1>;
				remaining_attempts {
					reg =3D <0x4 0x4>;
					type =3D "uint32";
					default =3D <3>;
				};
				priority {
					reg =3D <0x8 0x4>;
					type =3D "uint32";
					default =3D <21>;
				};
				ok {
					reg =3D <0xc 0x4>;
					type =3D "uint32";
					default =3D <0>;
				};
			};
			system1 {
				#address-cells =3D <1>;
				#size-cells =3D <1>;
				remaining_attempts {
					reg =3D <0x10 0x4>;
					type =3D "uint32";
					default =3D <3>;
				};
				priority {
					reg =3D <0x14 0x4>;
					type =3D "uint32";
					default =3D <20>;
				};
				ok {
					reg =3D <0x18 0x4>;
					type =3D "uint32";
					default =3D <0>;
				};
			};
		};
	};
};

&mmc2 {
	backend_state_mmc2: part@1000 {
		label =3D "state";
		reg =3D <0x1000 0x1000>;
	};
};

With this device tree barebox bootschooser is unhappy:

barebox@TI AM335x BeagleBone black:/ devinfo state
Parameters:
  bootstate.last_chosen: 2 (type: uint32)
  bootstate.system0.ok: 0 (type: uint32)
  bootstate.system0.priority: 21 (type: uint32)
  bootstate.system0.remaining_attempts: 0 (type: uint32)
  bootstate.system1.ok: 0 (type: uint32)
  bootstate.system1.priority: 20 (type: uint32)
  bootstate.system1.remaining_attempts: 2 (type: uint32)
  dirty: 0 (type: bool)
  init_from_defaults: 0 (type: bool)
  save_on_shutdown: 1 (type: bool)
barebox@TI AM335x BeagleBone black:/ boot
WARNING: bootchooser: Cannot read priority for target system0, using defaul=
t 1
WARNING: bootchooser: Cannot read remaining attempts for target system0, us=
ing default 3
WARNING: bootchooser: Cannot read priority for target system1, using defaul=
t 1
WARNING: bootchooser: Cannot read remaining attempts for target system1, us=
ing default 3
Cannot set parameter state.system0.remaining_attempts: No such device
ERROR: bootchooser: Failed to save bootchooser state: No such device
Booting entry 'bootchooser'
WARNING: bootchooser: Cannot read priority for target system0, using defaul=
t 1
WARNING: bootchooser: Cannot read remaining attempts for target system0, us=
ing default 3
WARNING: bootchooser: Cannot read priority for target system1, using defaul=
t 1
WARNING: bootchooser: Cannot read remaining attempts for target system1, us=
ing default 3
Cannot set parameter state.last_chosen: No such device
Cannot set parameter state.system0.remaining_attempts: No such device
Booting entry 'system0'
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
mounted /dev/mmc1.1 on /mnt/mmc1.1
[...]

But userspace is fine:

rauc-Message: 18:58:50.111: rauc status: marked slot rootfs.0 as good

rauc status:

=3D=3D=3D System Info =3D=3D=3D
Compatible:  insidem2m
Variant:
Booted from: rootfs.0 (system0)

=3D=3D=3D Bootloader =3D=3D=3D
Activated: rootfs.0 (system0)

=3D=3D=3D Slot States =3D=3D=3D
  [bootloader.0] (/dev/mmcblk0p1, vfat, inactive)

o [rootfs.1] (/dev/mmcblk0p3, ext4, inactive)
	bootname: system1
	boot status: good

x [rootfs.0] (/dev/mmcblk0p2, ext4, booted)
	bootname: system0
	mounted: /
	boot status: good


barebox-state -d:

bootstate.last_chosen=3D2
bootstate.system0.remaining_attempts=3D3
bootstate.system0.priority=3D21
bootstate.system0.ok=3D0
bootstate.system1.remaining_attempts=3D2
bootstate.system1.priority=3D20
bootstate.system1.ok=3D0


I assume this has to do with bootchooser.state_prefix. If I change from
state to bootstate (yes, brute force) I get:

global excerpt:

* bootchooser.state_prefix: bootstate

devinfo state looks the same as previous.

boot:

barebox@TI AM335x BeagleBone black:/ boot
ERROR: bootchooser: Cannot get state 'bootstate'
Nothing bootable found on 'bootchooser'
Booting entry 'insidem2m_1'
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
mounted /dev/mmc1.1 on /mnt/mmc1.1
[...]



When I set:

* bootchooser.state_prefix: state.bootstate

I get best of both worlds!

"devinfo state" still the same as previous two cases (logical, since DT
setup is the same, only bootchooser.state_prefix changed), "bootchooser
-i" looks sane, booting happens w/o any error, and userspace
(barebox-state -d, rauc status, barebox-state -g bootstate.system0.ok)
too!

Wall of text, two questions:

Is this resulting setup (DT with bootstate parent, state_prefix:
state.bootstate) sane?

Can the variant without the boostate variant work too? If it was the
other way around, userspace working w/o the bootstate variant but bnot
_with_ I would say additional configuration required or something, but
this way... I would like to understand this fully.


Kind Regards
Konstantin


-- =

INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de =


Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, Dere=
k Uhlig
HRB: 111204, AG Hannover


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

