Delivery-date: Wed, 01 Apr 2026 17:13:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xGL-007Wwu-1R
	for lore@lore.pengutronix.de;
	Wed, 01 Apr 2026 17:13:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xGK-0003yE-Ri
	for lore@pengutronix.de; Wed, 01 Apr 2026 17:13:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2U1ZQTQE+W5hBaLEn4/gxFY0P9SrtNQqllMBQEh/d7o=; b=0rrHwunphPMfTMtYNWdHcBS5y1
	5iPM8Dwl/k5Fxeux5qSOfh5/PY8urDJHtxsBPjFW4QtHtJcIWuA/pWjEzaV8prlTp7/WBoJrCrUHf
	JtoWjCAtFRm4oibpLXwmy+OvKxo6/i6j2f480kXieuHy0kZjZR2TGgq18A+c/sG/Ndb1364OyiQsY
	LeiJgoEWrOXXwLhuOsh00cqmZVRkWMbuDPcNpL96qGVVMK60Y77im0ESSbHUGAuv0khowQz3LfnQ7
	nI1ooCDmmoAAVAKXq2pIA3TvYW+NFnh2k5t2zhl7RVY6WI499DrQ1+HB17k/bqbjeCNsouux2+gJW
	7ArduEjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFh-0000000FbbF-2xOw;
	Wed, 01 Apr 2026 15:13:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFf-0000000Fbad-2Uyz
	for barebox@lists.infradead.org;
	Wed, 01 Apr 2026 15:13:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w7xFb-0003kV-Hg
	for barebox@lists.infradead.org; Wed, 01 Apr 2026 17:12:59 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Wed,  1 Apr 2026 17:07:14 +0200
Message-ID: <20260401151227.2097733-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_081303_631311_D172FADF 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] security: policy: implement age verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With barebox providing a UEFI environment, scheduling green threads
and running DOOM, barebOS is ever more becoming a reality.

But with great power, comes great responsibility - in the form of
government mandated age checking.

Fortunately, barebox's security policy framework already cleanly
separates policy from mechanism: Sconfig options define what is
permitted and IS_ALLOWED() guards enforce it at runtime.

This is a textbook fit for age verification: The age brackets are
just another axis of policy, and different security profiles can set
age thresholds appropriate to their deployment context.

This series adds SCONFIG_AB1043_AGE_{13,16,18} to represent the age
classes mandated by California's Digital Age Assurance Act (AB1043) and
puts them to use to gate access to dangerous subsystems:

  - beep: Audible tone generation constitutes noise pollution (13+)
  - I2C: Two-Wire vehicles (Mopeds) require only a learner's permit (16+)
  - SPI: Drives 4+ signals, requires full driving permit (18+)
  - CAAM: Cryptography is classified as a munition (18+)
  - fastboot: Exceeds posted speed limits (18+)

Future work would include integrating with the kernel-side support[1]
by leveraging barebox' new support for concatenating initramfs[2] to
inject a custom ramdisk init that does the appropriate prctl.

[1]: https://lore.kernel.org/all/20260401-i-hope-someone-believes-this-is-real-04f24e03944e@brauner

Ahmad Fatoum (2):
  security: policy: support age verification
  security: policy: add first age verification

 Sconfig                                       |  1 +
 commands/beep.c                               |  5 +++++
 .../qemu-virt/qemu-virt-factory.sconfig       |  8 ++++++++
 .../qemu-virt/qemu-virt-lockdown.sconfig      |  8 ++++++++
 drivers/crypto/caam/ctrl.c                    |  5 +++++
 drivers/i2c/i2c.c                             |  5 +++++
 drivers/spi/spi.c                             |  5 +++++
 drivers/usb/gadget/function/f_fastboot.c      |  5 +++++
 include/security/age.h                        | 14 +++++++++++++
 security/Sconfig.age                          | 20 +++++++++++++++++++
 security/qemu-virt-devel.sconfig              |  8 ++++++++
 security/qemu-virt-tamper.sconfig             |  8 ++++++++
 12 files changed, 92 insertions(+)
 create mode 100644 include/security/age.h
 create mode 100644 security/Sconfig.age

-- 
2.47.3



