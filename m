Delivery-date: Mon, 17 Feb 2025 11:54:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjylt-003Rxp-0k
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:54:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjyls-0008Iu-0k
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:54:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VGBLqQjQuZEzRDAWu5w5jkxSMHyWxTLGVnVbsymPyqo=; b=opkNlzJ3fxIefQ79gxxVsSGJQR
	4x7OlfQ7Hpak/TM60qrg0QDElxj/l0iIkpNVJgzI9vM/DfbZzzsr11Sygfqt1FHt2MaSCjG/a5pex
	cntgRoaRSp0w2YitQyHFYGWTrINuR6QRAUDwGzdWNz+e7ICMby2VyZZiIg8ZeAc2VoP/DEp+OZOCJ
	fofA5L9ZEuhfajnCkFTy9d3+q8BrocCP1sF/EhWnAS20D1PGorxrgLUlXou7ixfcls41G3DD/GsYj
	5YUP3jTK9w1etF8BRcIqv4m2cLaBA9USphAi7qm7M9FiG6ztMGkeRhLFA5T/CqODABfvGMdaNx30+
	E/FwrgYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjylJ-00000004Bt7-4709;
	Mon, 17 Feb 2025 10:54:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjyKy-000000046oC-2q6o
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:26:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjyKx-0003MA-7L; Mon, 17 Feb 2025 11:26:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjyKx-001OGo-08;
	Mon, 17 Feb 2025 11:26:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjyKw-005Yjy-3B;
	Mon, 17 Feb 2025 11:26:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
References: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
Message-Id: <173978801098.1325040.4745009863210752449.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 11:26:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_022652_716082_B35E1B2C 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] fs: move fs_driver open/close into struct
 file_operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Feb 2025 10:51:55 +0100, Ahmad Fatoum wrote:
> Linux places open and close (called release) in struct file_operations
> and thereby allows implementing them differently depending on inode type.
> 
> So far, not being able to do that in barebox didn't bother us much, but
> some kernel file systems depend on the directories to be opened before
> they are iterated through and barebox will start supporting that in the
> later commit.
> 
> [...]

Applied, thanks!

[1/3] fs: move fs_driver open/close into struct file_operations
      https://git.pengutronix.de/cgit/barebox/commit/?id=e31ca2eea7be (link may not be stable)
[2/3] fs: remove unused members in struct file_operations
      https://git.pengutronix.de/cgit/barebox/commit/?id=88798bebccd7 (link may not be stable)
[3/3] fs: drop unused FS_DRIVER_NO_DEV flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=a92e661073ff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



