Delivery-date: Mon, 05 Sep 2022 12:57:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nc-007PMa-Bw
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:57:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nb-0000Ek-4a
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vNt4aKPnhf1lutdRgpG5vcyQy6emnSL5zaG3g5tDoGg=; b=mr6jngS9G8VpW0YBMC+zMBhc9O
	fBLhZS4XyWUXSiDA+sJSQ95HNOIRxQn8Eapg6AUBH9zw3Fc3JvcHXPLYbmINxFVwZefgu7drA5O8o
	WAZ0PkKGm5qLTGwBSb5lgUVeBmPhn7BB44S9IB9i/gHsPeGNMkTr4lrrAqvI1l5ZYHEevdFZ6kL7c
	gpsgMmZkXyEyFDGAugiUc1mDTZPF2vK+mfPw8eqqzYCsQ6cljGTMEXIj47qhtkp4XGPFY9zjs7+z2
	v9uj3+s3YmEHa2kDU0vkHJCV4u2US0BckSB7/6E7DFXa7frb4SDT3QoIymVSxTWPPZsWYdawk2+My
	6wQNUpDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9g7-000ezl-Vg; Mon, 05 Sep 2022 10:50:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qE-00H4Kx-FQ
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vNt4aKPnhf1lutdRgpG5vcyQy6emnSL5zaG3g5tDoGg=; b=MitaV9B7HJMiH7yTC0GxhkzH66
	yyrXkZfgH+e3F70gcjq8737xuZQB8HWGmjxK5cv/MM40l4nVp1eWM12FbiqXbNaF1mYCNcKYyWbaX
	6Z/rCrpwPYL0sea1Ye+ovr/n6n9SxqkZKYRnexsg7XkslVdPMbJthl/UFJcvp9dkbVjFZsV1iFcWS
	+xzCHUQIBijbwjevUpGhAacbRB+UVilop1lBz1dj5N/IyikYz/xBwjovLaxs8f3BF1WDPOjE6Qj1I
	TnBJYH1YDkcBSTbMx9RLz3cZWQl1Zdvzf+LfMO6gjUJti8z/NvpiWdrvoDp9a3k73/Am5a5DazJ18
	kYrO4Vvg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q2-009UjS-Py
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008JD-OE; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0042HN-2f; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wea-2H; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:45 +0200
Message-Id: <20220905095557.596891-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105619_492926_C0A08B49 
X-CRM114-Status: GOOD (  10.22  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 20/32] misc: ubootvar: always initialize struct ubootvar_data::flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The flag member is only relevant to redundant environments, still we
shouldn't store garbage there for the non-redundant case. Thus
initialize it to an acceptable default: FLAG_NONE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/ubootvar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index d98a6ed9a742..723e9e2b547a 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -181,7 +181,7 @@ static int ubootenv_probe(struct device_d *dev)
 	unsigned int crc_ok = 0;
 	int ret, i, current, count = 0;
 	uint32_t crc[2];
-	uint8_t flag[2];
+	uint8_t flag[2] = { FLAG_NONE, FLAG_NONE };
 	size_t size[2];
 	void *blob[2] = { NULL, NULL };
 	uint8_t *data[2];
-- 
2.30.2



