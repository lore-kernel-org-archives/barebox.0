Delivery-date: Mon, 12 Sep 2022 10:48:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6v-0022Bq-Nb
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:48:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6t-0006Fp-UC
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:48:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kupg+ixBunvgYJj1KoCM/OxZHRpwUra7WxS2j7y4OC4=; b=jXsswwgrV7WE/w
	SrVVuOC1xWvEejB/4hZL//05DbiXCesRyHRuTiDFzbi3yV2wecc/OzCGTKkde6QaJ7OpRxVOUGGqj
	rCgrsBY947guFvM7OqLADRnNe5HBoULpxSTUW5zeBR9l7jokdCHKu/hZk0t38W6w8+c0Bpuhnw8vB
	GgYfYpe/0LvbVWhZLOhnwkBiRpxKtBzsXUycwRMxLjX9mhOse7gqsrm/kLP/+ZGYtTD+JsNeBaLQW
	kSForMT6THFgP2bkdOJP968Fcf9UDiN0nPFBha5aMnAWIl37CYhjyxbIZ11lqbVh+nEmZzh4WO7Fw
	NfdMRsdBiQDrjT5uoxgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf5M-007vbs-72; Mon, 12 Sep 2022 08:46:32 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3Z-007uha-MI
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:48 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z25so13683164lfr.2
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Kupg+ixBunvgYJj1KoCM/OxZHRpwUra7WxS2j7y4OC4=;
        b=EI77ACQDgTYG3gOWk68lIQcpz3n17zAKbrTb1Pe9DGFD831JbyLZUgSdYisD6feu05
         v9brmoRY5RNZFSap1KnbRGW8HMP3YbGRt1fyj5PgPvm26eBIrsX8+vTb6UF6CpCly+0Y
         LUAqVrxLD5sBvN8KOH3LzdyuMKOZpLv3dq1nmzGQ4Ko82gvfOEyHe/bz6Q2P1+gWai7H
         RBs2bzVXRNUQJ4OX40xWvVns9utpiMyx1/8k81gaTPSpYS1tSNSHqIuxEnHmWR0WZL5R
         hojG//wtt0O0nYv2uw4CeeURI90wooMJwUoLcQmrZOcbj9nZBtGdl9J1g9Oq2bEJeOeI
         +G8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Kupg+ixBunvgYJj1KoCM/OxZHRpwUra7WxS2j7y4OC4=;
        b=xU24YFoV0t9wz2ZzJElt9K8lCI4Q+TWsjfBrTizegyvcOHmOmgTLgTziAdn/wMpEBX
         0f1K3f7wEIVt9KFCdkQkZOR7ggWN4BvhCtSrkTc3b/z0y73evumP3Q7J0tgi5dKY25S9
         /Ki5OLcHG2juVySulMovQ3BJCAAC4VOqpqZGfybWssaYNo9W9BnTFU+BLxEZQcaPSuEK
         zSs2e8T7YQSI8o6xqKQSEqyxZYGnuv1FC7jAUxopfoe33hs7JYH+ndzvHuT16J6YoUhy
         QFIeLOUZWUqyahGh+NnAX+RxnkTkM38hVYYBlFtXFJArrLWfGIi5PFMJo8QNi2mnfTdI
         ZpFQ==
X-Gm-Message-State: ACgBeo2h/HSyd7TSIK0B18KI6KvEpEPkcP1C1V7E5eLw8zZRowgS1G7D
	pBuxOPN6M1yzc3gBRnBEdl20b0MJ6XbW4g==
X-Google-Smtp-Source: AA6agR4nNzcKn93lv7Erhz9mlwkp9TgdEML7vxAH0EI2VuY/b4s1duzR8RvMu0F0Q4GJqJgruRsoBQ==
X-Received: by 2002:a05:6512:3503:b0:496:517:5818 with SMTP id h3-20020a056512350300b0049605175818mr7955029lfs.186.1662972279850;
        Mon, 12 Sep 2022 01:44:39 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:30 +0300
Message-Id: <20220912084430.84451-8-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014443_726706_78BA3A81 
X-CRM114-Status: UNSURE (   9.63  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] Documentation: Voltage/Current Regulators: fix sphinx error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sphinx error:

    Documentation/devicetree/bindings/regulator/regulator.rst:8:
      ERROR: Unexpected indentation.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/devicetree/bindings/regulator/regulator.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.rst b/Documentation/devicetree/bindings/regulator/regulator.rst
index 9afc020acd3..754c4743286 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.rst
+++ b/Documentation/devicetree/bindings/regulator/regulator.rst
@@ -4,6 +4,7 @@ Voltage/Current Regulators
 In addition to the upstream bindings, another property is added:
 
 Optional properties:
+
 - ``barebox,allow-dummy-supply`` : A property to allow usage of dummy power
   regulator. This can be added to regulator nodes, whose drivers are not yet
   supported. It will rely on regulator reset defaults and use of dummy regulator
-- 
2.37.2



