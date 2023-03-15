Delivery-date: Wed, 15 Mar 2023 10:01:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0t-001K4p-2b
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:01:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0s-0001ie-M5
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vyLVBzpf+6/mwKMJmvSP+C+4tQcL6imyBORCisbZvnc=; b=uL0GQj2r5470tE
	1lTsScf9LF7ujnphIOuEYuhxEn/MRGiWj55LT/coXqtA/cneR6UQcTbTt5AemeykwvDeQ4n4Bzcfq
	JVVe7SoWvRoNKIisjB6tjyGVGi+OfOplotL8q7SN5y8TMC1qKHGzB2b0a6TDXfvsVQsJdmc4e91u5
	GgcaapSfVky+z2dFhhhR2TVN0lFfsEkb9NBpvJRs+Q+MTUQhfC+OhiOTpgUoMP7QfBTgsTt2NAciS
	SJd0XpnoOSiDzHj+jsBDHmskfL6ge75p3mZKpmsnhO+VHds0MvzQ41jW9WiHEyYvTQulpnMyNpSeg
	hyCR7M3zenh7W/G9evSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzN-00CqNQ-1m;
	Wed, 15 Mar 2023 09:00:05 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzK-00CqLg-0r
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:00:03 +0000
Received: by mail-lf1-x129.google.com with SMTP id br6so5183820lfb.11
        for <barebox@lists.infradead.org>; Wed, 15 Mar 2023 02:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678870798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vyLVBzpf+6/mwKMJmvSP+C+4tQcL6imyBORCisbZvnc=;
        b=Mgo3q4EXFkUK9mp67918swc8iV1R0B8DJ9xUKZ6l1lF9rFndt8QAUtQolIfHzsRW51
         mek7GFK4P/50ynwvdOHKfEayYJlopBsEA2nOvj+AjkvyJCNNjt8wQxh3CwJb6quJ38eV
         tEL9+ozXGKDA0gYAkL3Ug66+sFz1PYdbjk+6qaoKoV0QE6kbMntHuzMhvMJD7nKNEXR5
         x8lelrc7IN9/dbp2RXWV7DXF0EphDPxR81kj02PES8Owaqlz6dw6rGBAIB5azFN1xRs2
         sVop/nlcHksS8eKtR3rDRGdvI9UBFuDYa/QX0yHD2R1LjjtcT0VM/FcRF7h6iq5jUIff
         fzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678870798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vyLVBzpf+6/mwKMJmvSP+C+4tQcL6imyBORCisbZvnc=;
        b=wHtVFTa81UWTwD954eNb6K2Rn9oJppxlcJicnYSkWFJcJ7z9hSTZGqhHzo9dZwCWCa
         TOh8PuD3jos8fZP0iIzp21sw10XmXApre91VEmWxSx7OUG9Ff0TVPMYTNcjhWHgK9iQ6
         dX/JdC9rfDE7mvBH9KP7jzzAVpkpULtQC65M8g9iSIZACz3z+e0rcyPARls9ADBkpL/a
         5/J9bQn9x5+4m+veZfb9koSsLy4Jx12ybYILzFtB4xdR12quxs1tJFP7CUGZx0RTrzGW
         tn1q430Bn4t8wknWAPpxgRwAyFCGz2OqmXwtdHcYyluhfnEHE2BTQYj3kL+vC/j/OPnK
         yIsw==
X-Gm-Message-State: AO0yUKXKRtxvnILK6O6yIFQrK6gE9UxMiD56U/O9VbZuddrQNYUl2Prn
	C7R3ymQQu3+HUGlGyXGJlidDIBKpMdqJpmhk2sY=
X-Google-Smtp-Source: AK7set+k6rrrQXj7ifbTkyrIKCOGH4U7cYG55mg+JxH2MU9KDMLOCLTRFhynKJL0Cci/GeDd0csuBA==
X-Received: by 2002:ac2:5443:0:b0:4e1:13fa:bf07 with SMTP id d3-20020ac25443000000b004e113fabf07mr1572438lfn.43.1678870798362;
        Wed, 15 Mar 2023 01:59:58 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id t10-20020a19ad0a000000b004e7a0f67490sm737300lfc.110.2023.03.15.01.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 01:59:57 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 11:59:50 +0300
Message-Id: <20230315085953.4094660-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_020002_372491_21433DAD 
X-CRM114-Status: UNSURE (   6.86  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] MIPS: bootm: tiny fixes in do_bootm_elf()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Denis Orlov (3):
  MIPS: bootm: do not free fdt pointer that contains an error
  MIPS: bootm: do not leak memory on error in of_overlay_load_firmware()
  MIPS: bootm: remove unnecessary phys/virt conversions

 arch/mips/lib/bootm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
2.30.2



