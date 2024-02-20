Delivery-date: Tue, 20 Feb 2024 11:48:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNfg-00FvpN-1q
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 11:48:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNff-0000NT-U9
	for lore@pengutronix.de; Tue, 20 Feb 2024 11:48:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jSc9iiCg7Se0S+GCOt0fTAMN8R1GYl+8VjM2U5LVn/8=; b=WPisUdjuf4ZkQf+wx/02nq2kew
	2MTsLtbcPry/Jdy1vgKgoIzm9bQkC2obSgn4blm4px1+jO+MV+LGc6sBj/CqcoLaMmzepnkz0+j/0
	koJoe9dsSF19cKJY6jqrWMhmkLImdZnoS7SLzwPf9k7s+5+TehAkcQzufo14GmYMTEvjd5YLqVyVE
	LtVCM0cNx+coxOvCq9BJScnI29qpln+n468VYv86t0AqUastl2fs90Damx3N8Sx7oTnbEQWYvjobv
	U6F9wWrmEP91ZR4/Blz4xvysuqtb0BscdzUInrRyA1e/kRy493aXlralumW5dJb8FAHB2LfITzsbL
	Nnznm06Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNfE-0000000EK0m-38MM;
	Tue, 20 Feb 2024 10:47:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNfC-0000000EK0L-0Azu
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 10:47:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNfA-0000DM-S4; Tue, 20 Feb 2024 11:47:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNfA-001pIl-FO; Tue, 20 Feb 2024 11:47:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNfA-00AfxY-1L;
	Tue, 20 Feb 2024 11:47:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
Message-Id: <170842606841.2544422.2171936101349532030.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 11:47:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_024750_115753_C17221B0 
X-CRM114-Status: UNSURE (   9.58  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/12] Partition table manipulation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 09:31:28 +0100, Sascha Hauer wrote:
> This series adds support for changing partition tables. There is both a
> C API and a new command to create partition tables, to create partitions
> or to delete partitions. Both MSDOS and GPT tables are supported,
> although MSDOS currently lacks support for logical partitions which is
> left as a future exercise.
> 
> The partition manipulation command mimics GNU Parted which has a quite
> convenient API for use in scripts. Some examples for the command are:
> 
> [...]

Applied, thanks!

[01/12] partitions: dos: save indention level
        https://git.pengutronix.de/cgit/barebox/commit/?id=4accc68d2d51 (link may not be stable)
[02/12] partition: allocate struct partition_desc in parser
        https://git.pengutronix.de/cgit/barebox/commit/?id=1018f6c694f0 (link may not be stable)
[03/12] partition: allocate struct partition in parser
        https://git.pengutronix.de/cgit/barebox/commit/?id=57392a862d40 (link may not be stable)
[04/12] partition: efi: keep raw data
        https://git.pengutronix.de/cgit/barebox/commit/?id=081561b017dd (link may not be stable)
[05/12] uuid: implement random uuid/guid
        https://git.pengutronix.de/cgit/barebox/commit/?id=1428b9259ed5 (link may not be stable)
[06/12] linux/sizes.h: add more defines
        https://git.pengutronix.de/cgit/barebox/commit/?id=9946237b7152 (link may not be stable)
[07/12] partition: add PARTITION_LINUX_DATA_GUID define
        https://git.pengutronix.de/cgit/barebox/commit/?id=834131b9bae1 (link may not be stable)
[08/12] partitions: move parser.h to include/partitions.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=5843759d80f7 (link may not be stable)
[09/12] partitions: implement partition manipulation support
        https://git.pengutronix.de/cgit/barebox/commit/?id=914f24316014 (link may not be stable)
[10/12] partitions: dos: implement partition manipulation support
        https://git.pengutronix.de/cgit/barebox/commit/?id=8f48e6366cbb (link may not be stable)
[11/12] partitions: efi: implement partition manipulation support
        https://git.pengutronix.de/cgit/barebox/commit/?id=bdc3cb54dc80 (link may not be stable)
[12/12] commands: add parted
        https://git.pengutronix.de/cgit/barebox/commit/?id=7dd66e63d887 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



