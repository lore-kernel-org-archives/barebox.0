Delivery-date: Fri, 28 Feb 2025 09:16:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvXZ-007yxg-1W
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 09:16:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvXY-0001qt-9z
	for lore@pengutronix.de; Fri, 28 Feb 2025 09:16:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8pEPF/d1Wl4gapdv4OrG3NOMxbgnS20PNZatHzueD/g=; b=hH8OhfJgEkfzsyw+h4SEgEcptF
	92EPy9rVDArGT8MW03GyFt2WV6BpDEFRUrfxy62CBOn4GG1bUk2VYRO5EXPfIVQAQTuLrXCly5Wv9
	arFATDlPo2kJ9wJCVTl7YH1AiuxsAu0RbrsW+hTg7RtGSfTXAm2nDlsUIVavhnt/9ISKI0lj+qskN
	cFF714Q2vtHyu07U/+1Nm4cXWuEkEUkeCatDGRiV6X5hk6cteQZW2/1vRxdeJmium6K/dCLDUSU3A
	N3ck4OPBR5bKIGsRwk4y9+cCFx7euTQYL55Gcg/JpuWwAtF2g1QpGyYj311wBvzjLwoXm+Bl+uZbJ
	Qx4SXoTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvX5-0000000A8ES-1IYx;
	Fri, 28 Feb 2025 08:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvMx-0000000A5ew-26Pl
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 08:05:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tnvMw-0000gA-B1; Fri, 28 Feb 2025 09:05:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tnvMw-003GJE-0S;
	Fri, 28 Feb 2025 09:05:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tnvMw-005ENZ-09;
	Fri, 28 Feb 2025 09:05:14 +0100
Date: Fri, 28 Feb 2025 09:05:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z8FuOsc_Eg-p6zCJ@pengutronix.de>
References: <CAP1tNvToG8WGLUo4_e2dSdovFZBAbcdOFUqm+F+W4gWoaVnrgQ@mail.gmail.com>
 <Z8CaS4gLesWjG81q@pengutronix.de>
 <CAP1tNvQFhZHobkaYL_v9aQ8FAqEtd--pkGxW3C6v81zMUaM-PQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvQFhZHobkaYL_v9aQ8FAqEtd--pkGxW3C6v81zMUaM-PQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_000515_538356_A4F3F878 
X-CRM114-Status: GOOD (  20.81  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: automount doesn't work without GPT table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Feb 28, 2025 at 09:06:55AM +0300, Alexander Shiyan wrote:
> Hello Sascha.
> 
> The error occurs in the cdev_mount_default() function.
> cdev_get_mount_path() returns "/boot".
> And indeed, the partition is mounted here for some reason...
> I don't understand yet why this happens.
> 
> barebox@Mega-Milas Informer SAMA5D2:/ mount
> none on / type ramfs
> none on /dev type devfs
> /dev/mmc1.0 on /boot type fat
> 
> Update:
> I found that this happens if the CONFIG_OF_BAREBOX_ENV_IN_FS option is used.
> When disabled, mounting occurs as expected, but in this case I cannot
> use environments from a file from a partition on the SD card.
> It is not yet clear how to get out of this situation...

Ok, so the partition is already mounted for the environment to /boot, so
you get -EBUSY when trying to automount it somewhere else.

The question arises why you want to access it via automount when you
already mounted it for your environment.

Anyway, maybe we can do better by just mounting the partition to its
standard location the autmount would use anyway and just create a
symlink from /boot to /mnt/mmc1.0. I just sent a patch for this, you
could give it a try.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


