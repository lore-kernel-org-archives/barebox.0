Delivery-date: Mon, 27 Jun 2022 12:26:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxH-00GGOo-Hu
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:26:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxJ-0001KI-3l
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:26:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=98bNRUYuPSEbO/Rdtlt0Jj8Jr+ooB1Gl0qQ7I+dDS7o=; b=rmM1vmaxuxGdUcxMmn5gcdByEO
	//pl66nHd6AGfQp8WAmKo0x+p5Gi4ml2aRputFn7L9LhHBzvb2Woh+jSQmgLpG/QS7ilzqabrresW
	ly2IDz20GG+8lLgDqOWT4quuarv77UjanPxaR7eQAbN9iD01ql867ycF5v19hAMRgncQfaWma6E9s
	cCzcsSXTqQ41e987M/xOzvS76dE5O5eLi7DPRAzYOH0L6VnGVRPhuuNqa7DRRLsq9Sm1f9d1KLLiS
	L950T8bk1S9w1ygo5BZw5hKXFhHQ+5EkuiC8/tNsuLUIRpH9S7ys/bCEojxPEs9wBlaiRTbnZU6Dq
	gIbULOpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvx-0005kZ-8b; Mon, 27 Jun 2022 10:25:33 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvf-0005bG-Mp
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:16 +0000
Received: by mail-lf1-x12a.google.com with SMTP id z21so15733835lfb.12
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=98bNRUYuPSEbO/Rdtlt0Jj8Jr+ooB1Gl0qQ7I+dDS7o=;
        b=NyaGg1CcV54BdCMb7W0Uw/Goe0xDlQjX5/rnu2Zp2zMc19SlZmuBPjK4moH+PShU0k
         +PwETFwfC5c9W0HlsmgjLK3GY8RtosghGxRO61eo2rXbwXKhAJVHExVWpxGan6P6L3Fb
         iIfE8MPiS/XzAwvAvMzscl88BGden5H9dqThoFcYw33aQrh4BIHT0Gab0xJCUZ7HNsjL
         gEYgtA7E9jL6VT90kI5DF4avQ7Zw3SzGOYyQomHzowqjthsQKKbW6NZ2sMjDj8cKHIBy
         jP9/3DnSgURkhxjqZWF4lprjKfoOKe1SY+hjbFTRM6hFzzFI1S3TzU6ZjAtI5D670oVy
         G0gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=98bNRUYuPSEbO/Rdtlt0Jj8Jr+ooB1Gl0qQ7I+dDS7o=;
        b=DWZBxsCqO9UvWVVe5zKY9Pp+WGqph5f0/0nhBjQBFOw/vLyXNuwAhRUS7NGqEab/Zb
         xUFWvrCQymklNaf7/K/tXX9E+yD80KWdGOtuTXwxSLj4re9dLBjn3y0eahyj8uGoybGA
         mnTW2WLVnWJGsLp2pmUC3tTQkxwO7e3DTC9Kh8NJjrbD2/yhfsMZlCMZr/H6cFOlBjej
         mhtWWbtQG7wwCMk6AKoF6omRzGK6r8cDkRtzvJsBgpun+hOP/pbVxJWWx86zCi4O/fj8
         jJSFyh+LxZ6c/4fST3TK4kIa8Zf2hiseqKFVS5nF0IMVfxefaMIdL+14CYxiXjESducj
         SQXQ==
X-Gm-Message-State: AJIora98XbmeAaeLj4fywV8SIetFxMTqFhVP8pc+T11I7WvXhQ51wWRV
	QdmOJxU76HjM9fFGj2d7mtivMqfJJp4=
X-Google-Smtp-Source: AGRyM1tR7qlwLpLJ7ugn3go9NLJFcs38V1F7unCsA9upKYIMJ82FkvXUv17trDkDZ9tcsiS49Re8LQ==
X-Received: by 2002:a05:6512:3042:b0:47f:ac02:28e9 with SMTP id b2-20020a056512304200b0047fac0228e9mr7371916lfb.448.1656325511652;
        Mon, 27 Jun 2022 03:25:11 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:11 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:55 +0300
Message-Id: <20220627102500.18427-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032515_804390_C0562156 
X-CRM114-Status: GOOD (  10.06  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] of: Use appropriate header for of_clk_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 83291c4785..101b2f74c7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -17,8 +17,8 @@
 #include <linux/sizes.h>
 #include <of_graph.h>
 #include <string.h>
+#include <linux/clk.h>
 #include <linux/ctype.h>
-#include <linux/amba/bus.h>
 #include <linux/err.h>
 
 static struct device_node *root_node;
-- 
2.32.0



