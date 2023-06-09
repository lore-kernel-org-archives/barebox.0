Delivery-date: Fri, 09 Jun 2023 07:00:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEL-00GjbE-6l
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 07:00:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEI-0008NZ-T9
	for lore@pengutronix.de; Fri, 09 Jun 2023 07:00:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DGnyw88rUCKwBYX0fRKDtgkoMfW0GNuxZpyzFQzkmro=; b=kHGJCWLQPjWM7U
	tsHOra4tNxdE5P/53H0IfL7resEdJWbTwmuYARhFhnOoFxIPq9hF2G8+5feaNeJiyyhJ6sM0CVO4x
	o7Ujf9FirnjZOj5xWPQhpDntaV9nWDnigCGHsGgsJ477Kfqerb08S5BcyU9c7BtSz5kFoLqZVXlxL
	Uu1/S6Si9u90EOsC5U/TL3BWvKU/z3s7TTTRf3xDo76lN6G506eSuhYmnr2pxWHXzGQV4A+ihdRyy
	fZ9rr+K/Z0S9C7uTyvy7U1FtCjdPjADRkx23WJW3hcVrioQMu3gTyq9jA05GieeF0tJUhyLmr95Wl
	YjZl1A41MawdgDBjw9NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UD0-00Bf4N-1y;
	Fri, 09 Jun 2023 04:58:46 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UCx-00Bf3V-2d
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 04:58:44 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f63ea7bfb6so1607277e87.3
        for <barebox@lists.infradead.org>; Thu, 08 Jun 2023 21:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686286721; x=1688878721;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DGnyw88rUCKwBYX0fRKDtgkoMfW0GNuxZpyzFQzkmro=;
        b=AIEZinTs4/HqzxZPxwrPMQHarGHAqLgh6UQuiGYLPRMwLQWvdSeoBPEvJqxOsYejNZ
         15ox0WBdCnPWFuj4f8YymY+t89vqia0brqdIMrQvZ4XYD8JqP/WP/udnrQix34nAmoFA
         57IYdf0XrOzm7AOL+LQAu3ZL0CFTZ9G/sPFosswSTDLoV13chVrS+pC7WpyLTwKf5gd9
         yfWy9QYKABcUKwaR7btDZITHaM5vsU2Kz32kBsa58y1rMVrRHLZD2dTKJuKsXJS5m7ye
         WBOiMirohPAStpYDHQ1BAEIvRXLIBfqjHKzkdxVDN/rQQB/ETRKhSY3Pc+8ELlsNAcAf
         SMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686286721; x=1688878721;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DGnyw88rUCKwBYX0fRKDtgkoMfW0GNuxZpyzFQzkmro=;
        b=XplV2A7nBg3Bk8+wZmilJ1dq2tQIv2u+5JpKWh4rIqhJtMDCjDcpXmDsMJ5fO2lL+L
         pvKJcvaxDKrZI5i0af8IinZ8w7Tip5KaR99DsMxGtUrTiiJY1/nSk39keSqq6bL7GRhm
         QZoi6W9Ul7HdaqY5VEJXS+cy1UJS1bHVG+pEHY9OyzGRTtmwwBymlc+YAplN8DlhW7DH
         IpX3vWy0wPGU51B5TrjnXqmX/yDk9myaxhzAa+BKnTudFbk+rhIsZcsszSDzFkQZYDXg
         ZLrg2BIGD4/TAVKjPIAXOqUWCvOt4L57CH5lFXYwT+3hx0Nnp7xVGjSnqiH+w/bairrb
         gtzA==
X-Gm-Message-State: AC+VfDyIK+GqwzwPPLylZu6H4WQeDgvTSn+NQgoL5IDhlowrAdfHi1JZ
	Qd3jcrGv5dMDt7hTPg1Ldn5q5K/NM6ZmPg==
X-Google-Smtp-Source: ACHHUZ6kS37BeuPAL9v1fl7Ix8paKLy4NXRF9Cw3l3tyG/zLksyWnlC55xD/HtV9YX5n1fbzYZA3DA==
X-Received: by 2002:a05:6512:32b4:b0:4f4:b3a6:4140 with SMTP id q20-20020a05651232b400b004f4b3a64140mr128227lfe.42.1686286721023;
        Thu, 08 Jun 2023 21:58:41 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.230])
        by smtp.gmail.com with ESMTPSA id y22-20020a197516000000b004e843d6244csm404325lfe.99.2023.06.08.21.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 21:58:40 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  9 Jun 2023 07:54:06 +0300
Message-ID: <20230609045829.2225-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_215843_858119_08081172 
X-CRM114-Status: UNSURE (   6.43  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] include: bitops/const: partial update from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This updates some of the definitions in those files, mainly to make
BIT*/GENMASK() macros usable in assembly code.

Denis Orlov (3):
  include: const: make UL/ULL() macros commonly available
  include: bitops: allow BIT* macros to be used in assembly code
  include: bitops: import more BITS_TO_* defines from linux

 arch/arm/include/asm/memory.h    |  5 -----
 arch/arm/include/asm/pgtable64.h |  2 --
 arch/kvx/include/asm/sfr_defs.h  |  2 --
 include/linux/bitops.h           | 24 +++++++++++++++++-------
 include/linux/const.h            | 10 ++++++++--
 5 files changed, 25 insertions(+), 18 deletions(-)

-- 
2.41.0



