Delivery-date: Sun, 28 Feb 2021 20:10:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRS3-0003Te-W1
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:09:59 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRS3-00015F-91
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:09:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YYKGei7Lg7COGm+ksDqOmO165m0O5rkqdVP75bEAYvM=; b=ZpNvpdjWjOs+ABfnUQ8qV/Nbx
	AQG2wtxsNDeMwQFCa00JzsHVrpo0HXpvzBNt0FgoJtB1u+3PEXlbwlHx0BECzVVkj55YVVCtoBrZC
	7HdbmijjstrkkpCdDwmeyF7rU8flLSDrgKH38DcuC1Thrc3TQ2jnsRmWP+1nJwYJaGwLw/E12Y5x6
	dtaL+xeirV7cZ6+ILNqfjNZHh8m6LqtZO4XXltvLlq1HU+VM4JIiwvALITno2L47j9VJ2XmTqnIe2
	MNc5/fRyOHSsBLhI4KnroSNsunxW77JDERxkGWvdB3U6kVrf2cgSHfX3a93sowH+MydYWOyse/t8y
	c5LFrcQvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRQy-000693-Rb; Sun, 28 Feb 2021 19:08:52 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQr-00065B-8v
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:46 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 209F360009;
 Sun, 28 Feb 2021 19:08:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:30 +0100
Message-Id: <20210228190836.1451663-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140845_427139_1E600178 
X-CRM114-Status: GOOD (  10.32  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] hw_random: virtio: simplify code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux code did a bit more than we do, but after deleting the
unneeded parts virtrng_probe and virtrng_remove do nothing but
call probe_common/remove_common. Drop the intermediate functions.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/hw_random/virtio-rng.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/hw_random/virtio-rng.c b/drivers/hw_random/virtio-rng.c
index fbf1a5715a33..7bdacc976e72 100644
--- a/drivers/hw_random/virtio-rng.c
+++ b/drivers/hw_random/virtio-rng.c
@@ -61,7 +61,7 @@ static int virtio_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wai
 	return len;
 }
 
-static int probe_common(struct virtio_device *vdev)
+static int virtrng_probe(struct virtio_device *vdev)
 {
 	struct virtrng_info *vi;
 
@@ -76,22 +76,12 @@ static int probe_common(struct virtio_device *vdev)
 	return virtio_find_vqs(vdev, 1, &vi->rng_vq);
 }
 
-static void remove_common(struct virtio_device *vdev)
+static void virtrng_remove(struct virtio_device *vdev)
 {
 	vdev->config->reset(vdev);
 	vdev->config->del_vqs(vdev);
 }
 
-static int virtrng_probe(struct virtio_device *vdev)
-{
-	return probe_common(vdev);
-}
-
-static void virtrng_remove(struct virtio_device *vdev)
-{
-	remove_common(vdev);
-}
-
 static void virtrng_scan(struct virtio_device *vdev)
 {
 	struct virtrng_info *vi = vdev->priv;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

