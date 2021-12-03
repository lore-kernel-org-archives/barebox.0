Delivery-date: Fri, 03 Dec 2021 13:43:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mt7uW-0001yu-5s
	for lore@lore.pengutronix.de; Fri, 03 Dec 2021 13:43:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mt7uV-00023x-1d
	for lore@pengutronix.de; Fri, 03 Dec 2021 13:43:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=81DNXnXOrUk46jbNv9tnGGAlvyN9IcZdnCPTyh0+W7Q=; b=akuj5QN4I1ZTW9
	Z4dBZHvXl6zsYKjQ0xS8on8nd1A8vwkXS9I9O1xnuxrgRrGE5gOWz5yIDwdAAlX/rVILEc1fOfiZ9
	zDYSO36Ik3/drozuSMKdna5RT520ggYK0f0vKd7p3EvbWsCNsLrcL6w992XiSzEvMvprXWguODfh5
	zKXOJAor2Ir/qHGwxZTpRNG9LDw9TaYK1UGB/vG8MFyf78dAPTnvp8TgUwC/QDU6EI6azbG77W+KC
	GfsGGp574Jx0FxqPom513zmvGBC5ldZhJZsLcfSsuowsKKLyqRKS3CMYmhGf3Xvqbq2OoJ503dkWF
	OPdl57tfatKAOHjwjkeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mt7sq-00Fm8X-WA; Fri, 03 Dec 2021 12:41:49 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mt7sZ-00Fm2K-Vf
 for barebox@lists.infradead.org; Fri, 03 Dec 2021 12:41:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 8372840397
 for <barebox@lists.infradead.org>; Fri,  3 Dec 2021 13:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1638535256;
 bh=UOXN5EqId7HRijdlG43agou2ifnRFnBFA/LY0fU/1/I=;
 h=Date:From:To:Subject:From;
 b=JL0ewAIARWeEveQcMjI/Syht1o3ayZCZ5sncQwwLAXYugMEmKVekH1Bj+9jYbmuM+
 aIKbljtmCpb2C5deadt67Bz2cWvlEKW3zPf+HjSxgwyR0KKAuyzoUqLRv0kXWLiKSF
 SRiBWf8zYr59skAB2utfixy7J440jeAXnhfxj3FR3gZXahl5WJO505ZNVlbaU6TlZ/
 SzryrW7EPATwc36CD8Edu9X1JHj8Eho9pcuuzKazu9reAZa1hiXKU7zc2okJc0OzzL
 z81m+P6FutFMloqV4IuPvDiMICiKkaSYv2nTd6yz5OuuykcqLWi2HPVaIWZgQFfDSX
 6MooeknoVipVg==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id woL1yu29nzVc for <barebox@lists.infradead.org>;
 Fri,  3 Dec 2021 13:40:56 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 1500F400E1
 for <barebox@lists.infradead.org>; Fri,  3 Dec 2021 13:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1638535256;
 bh=UOXN5EqId7HRijdlG43agou2ifnRFnBFA/LY0fU/1/I=;
 h=Date:From:To:Subject:From;
 b=JL0ewAIARWeEveQcMjI/Syht1o3ayZCZ5sncQwwLAXYugMEmKVekH1Bj+9jYbmuM+
 aIKbljtmCpb2C5deadt67Bz2cWvlEKW3zPf+HjSxgwyR0KKAuyzoUqLRv0kXWLiKSF
 SRiBWf8zYr59skAB2utfixy7J440jeAXnhfxj3FR3gZXahl5WJO505ZNVlbaU6TlZ/
 SzryrW7EPATwc36CD8Edu9X1JHj8Eho9pcuuzKazu9reAZa1hiXKU7zc2okJc0OzzL
 z81m+P6FutFMloqV4IuPvDiMICiKkaSYv2nTd6yz5OuuykcqLWi2HPVaIWZgQFfDSX
 6MooeknoVipVg==
MIME-Version: 1.0
Date: Fri, 03 Dec 2021 13:40:56 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Organization: Inside M2M GmbH
Message-ID: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_044132_380541_D4B3FEBC 
X-CRM114-Status: GOOD (  13.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

finally I managed to integrate rauc and barebox-state into my yocto 
build. I am not sure
completely yet if this is done properly, though. I want to make this
bootchoser-alternate-rootfs-switchover-thingy working properly with 
bootchooser detecting
reset cause and additionally rauc/barebox-state marking successful 
boots.

The documentation looks very good and comprehensive overall but may be 
its me not getting
the part how and where the shared data is properly stored.

Please let me briefly explain what I already have (targets mmc1.1 and 
mmc1.2 are bootloader
spec entries):

bootchoser variables defined in barebox (preliminary in nv namespace, 
does it need to go
elsewhere?):

barebox@TI AM335x BeagleBone black:/ nv
   allow_color: true
   autoboot_timeout: 3
   boot.default: bootchooser insidem2m
   bootchooser.last_chosen: 2
   bootchooser.retry: 1
   bootchooser.system1.boot: mmc1.1
   bootchooser.system1.default_attempts: 3
   bootchooser.system1.default_priority: 21
   bootchooser.system1.priority: 21
   bootchooser.system1.remaining_attempts: 0
   bootchooser.system2.boot: mmc1.2
   bootchooser.system2.default_attempts: 3
   bootchooser.system2.default_priority: 20
   bootchooser.system2.priority: 20
   bootchooser.system2.remaining_attempts: 1
   bootchooser.targets: system1 system2
   user: none

barebox@TI AM335x BeagleBone black:/ bootchooser -i
Good targets (first will be booted next):
system2
     id: 2
     priority: 20
     default_priority: 20
     remaining attempts: 1
     default attempts: 3
     boot: 'mmc1.2'

Disabled targets:
system1
     id: 1
     priority: 21
     default_priority: 21
     remaining attempts: 0
     default attempts: 3
     boot: 'mmc1.1'
     disabled due to remaining attempts = 0

last booted target: system2

When linux is booted rauc complains:

(rauc:396): rauc-WARNING **: 08:32:31.311: Failed getting primary slot: 
Failed getting primary slot: No content to read

EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: 
(null)
rauc-Message: 08:32:31.729: rauc status: 
GDBus.Error:org.gtk.GDBus.UnmappedGError.Quark._g_2dio_2derror_2dquark.Code30: 
Failed marking 'rootfs.1' as good: Failed to run barebox-state: Child 
process exited with code 1

# rauc status

(rauc:583): rauc-WARNING **: 08:33:46.622: Failed getting primary slot: 
Failed getting primary slot: No content to read

=== System Info ===
Compatible:  insidem2m-s
Variant:
Booted from: rootfs.1 (system2)

=== Bootloader ===
Activated: (null) ((null))

=== Slot States ===
o [rootfs.1] (/dev/mmcblk0p3, ext4, booted)
	bootname: system2
	mounted: /
	boot status: bad

o [rootfs.0] (/dev/mmcblk0p2, ext4, inactive)
	bootname: system1
	boot status: bad



# barebox-state -d
Neither /aliases/state nor /state found


# cat /proc/cmdline
bootchooser.active=system2 console=ttyO0,115200n8 root=/dev/mmcblk0p3 
rootfstype=ext4 rootwait


This is /etc/rauc/system.conf:

# cat /etc/rauc/system.conf
[system]
compatible=insidem2m-s
bootloader=barebox

[keyring]
path=ca.cert.pem

[slot.rootfs.0]
device=/dev/mmcblk0p2
type=ext4
bootname=system1

[slot.rootfs.1]
device=/dev/mmcblk0p3
type=ext4
bootname=system2





Actually I fully understand that rauc/barebox-state has no info where to 
store its marking to
be read later for barebox. Even /boot/ is not mounted with the barebox 
environment in it
(/dev/mmcblk0p1 vfat carries bootloader images and barebox.env). Is it 
possible to utilize
that for interaction?

Is it a must to utilize the barebox-state framework for this? I read 
very much about this but
everytime it is referenced as a device tree extension which is provided 
as an example in arch/arm/dts/state-example.dtsi. Every doc or walk 
through refers to a device tree.
But - sorry - does this go into the barebox device tree? Or into the 
kernel device tree?
Or both?

Both parts needs to be informed but how does userspace 
rauc/barebox-state access stuff
provided by device tree?
I could easily utilize the I2C EEPROM on my Beaglebone Black for this 
but how should this
look like for barebox and kernel?


Kind Regards
Konstantin










_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

