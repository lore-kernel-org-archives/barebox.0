Delivery-date: Wed, 28 May 2025 14:19:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-001BYI-2t
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-0000cT-BO
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KPf8XwjQ/mUHYDxI9wyf34oqMnUA8eNH5z6mIE+hgLc=; b=lXFWcRaWtIf+ERL6PzHlT+fMQg
	KjeAeMWphS8sj0g9n62avjni460mBnINuYxYLBkfkwgiq+izBugKq3bJQ8zle8UI9MpVr7dUMSOS1
	mVOBbv6r/p+/9fKdQprHcdhORFFpfn2Zzn7hwFy2wo8QKSDVUohENo5Hagmksb4mdFlZiJklS8+K5
	IF32XcZX3/Ga9+B52tSrchcqTHE/4QaKZbridpLcougzq9iXLLGXhlcAp2/TxEhsl+v3Zy3F+lPe1
	aeVhtcgmiKELYYb9+jW+Pi6PWIh4SJRlF5BaipxBBGaRNF1Bfm+4jEyIZR3q/cC6H18jwEtCeognf
	EDeTt1Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkh-0000000D5PH-2THQ;
	Wed, 28 May 2025 12:19:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY0-0000000CvyM-22It
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=KPf8XwjQ/mUHYDxI9wyf34oqMnUA8eNH5z6mIE+hgLc=; b=wIDO8Fap8MHtPOamgW3FgfpQkU
	FtT6PGu2KZmSwstqCnrY2NImMJ6yh7bBhAF3CwT+9RPFyDgwdwJ10wZkC0m4A24ztNeF6uVdwc916
	o6aTbJ+d1Vg+W7Oqch91f5EkfUW8p8F0oBuW8mj1otCog+NoH/obBg8Vo+6N4Y3lkLuY5LDggO2V0
	6bQsFD3+ad3xgsF1HEzEy+AsEO/MFpEYf40guxA0YgSDbohXjl5z+Xia8qtyERLGq+LlA4Rb7APk2
	ocZFf0uNpk4oG/1tYXM86j5H/dKiP1QWhcctETnIpGfHCzubKviq6TwhuCCyBGJIXTH3JwBLHwQZp
	kIv1vIDg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXw-0000000DXDr-3ztk
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001pd-Mn
	for barebox@lists.infradead.org; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000ZhD-1a
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-1H
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 28 May 2025 12:50:43 +0200
Message-Id: <20250528105046.3270397-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120209_012930_0CC59FA8 
X-CRM114-Status: UNSURE (   9.33  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/10] bootm: have bootm_get_devicetree return NULL if passed empty DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will allow users to force boot of an image without passing a device
tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 4c5913ffb95c..4aebc8a66abd 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -418,7 +418,8 @@ static bool fitconfig_has_fdt(struct image_data *data)
  * devicetree. It returns a pointer to the allocated devicetree which must be
  * freed after use.
  *
- * Return: pointer to the fixed devicetree or a ERR_PTR() on failure.
+ * Return: pointer to the fixed devicetree, NULL if image_data has an empty DT
+ *         or a ERR_PTR() on failure.
  */
 void *bootm_get_devicetree(struct image_data *data)
 {
@@ -463,6 +464,8 @@ void *bootm_get_devicetree(struct image_data *data)
 			ret = read_file_2(data->oftree_file, &size, (void *)&oftree,
 					  FILESIZE_MAX);
 			break;
+		case filetype_empty:
+			return NULL;
 		default:
 			return ERR_PTR(-EINVAL);
 		}
-- 
2.39.5



