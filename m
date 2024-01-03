Delivery-date: Wed, 03 Jan 2024 11:17:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJf-001mYd-0h
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:17:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyJe-0003DJ-5Y
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:17:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I8BgwTSqO/0Ttgl8il8VVOtUaEyf8rh8+NOamjWCRbQ=; b=2RXWU2Xh1AuxVKXV8pmRquhniK
	LNkma1rQrzjuz936NvmPzfuVZbDgtRJmB+n/StnbAgkWhsEyVJdpvz2RJcf23ijTwCy+cSVXq7PpK
	WsiJnaEkzQ4mDAP9C/MTQxfXvu9GnE6PljMylbsHH7ij/Q6VswQbbhavKDF0DoZcrh8SWG6ALR0yT
	0Tagjaw702a78IDtc82nlR6m3LB/iDTcy/eFLybrIbPTZCeagFHPfmDnJFkIrkvJLQ6ROwDVtrurT
	zLqWST5H5pAFLETPuQ5rpxV/pPwptBd07vcpoOXxlf6yZcGro0HwAC5pH5Rmrl795asCCLgjG9VXI
	BXdNHRug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyId-00AMQL-19;
	Wed, 03 Jan 2024 10:16:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyIa-00AMOR-1L
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:16:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIZ-0002hm-6Y
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 11:16:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-0005w4-Pj
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 11:16:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyIY-00B286-2I
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 11:16:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  3 Jan 2024 11:16:23 +0100
Message-Id: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021632_453019_890D62D9 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/6] cdev: delete partitions when deleting master cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

blockdevice_unregister only calls devfs_remove on the root cdev and
leaves the partition cdevs dangling. This doesn't break until the
block device parent struct device is freed at which time, it will
iterate over its cdevs to free them. If there's partitions there,
list_del on the partitions triggers a use after free.

This series fixes this by removing partitions whenever the master cdev
is deleted.

Code has been this way since for ever, but virtio deletes its devices on
shutdown triggering this issue. As virtio isn't that critical, I think
it's ok to not go into master right away and sit in next first.

 common/partitions.c    | 12 +++++++----
 drivers/base/driver.c  |  2 +-
 drivers/of/partition.c | 16 +++++++--------
 fs/devfs-core.c        | 45 +++++++++++++++++++++++++++---------------
 include/driver.h       | 12 +++++++----
 lib/bootstrap/devfs.c  |  2 +-
 6 files changed, 55 insertions(+), 34 deletions(-)

-- 
2.39.2



