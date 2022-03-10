Delivery-date: Thu, 10 Mar 2022 21:44:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSPdt-001IdB-4M
	for lore@lore.pengutronix.de; Thu, 10 Mar 2022 21:44:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSPdr-0008Mu-Fz
	for lore@pengutronix.de; Thu, 10 Mar 2022 21:44:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9MqiiAhq28Ru1o9cxnYudl7NS4J96hr5Ho6R2M0HfA=; b=hkkl6F8WUfAsih
	Cj/B6gW7rX8gdSysRmJA0j5ePUoBmRedirOzuZOeg0/mQgbiWHr9a6SINytPjueZBSLRdcKgzhCqU
	WjXEZXB6gDU/kWu5nij1EnFr3pJO5mgj9nLBIUqEn2uOF9APINuX5NKswD8or4Wwcjz17BgySjFCa
	Rye3SmmKG2eqVI8JOCFpwr56KqCYdgg5AF4+aSzJvjfVSIb1nXhTLVAi4DsM1aaeJhAXf6wcCKxxG
	sDTPnPrqJFzxZUJrLGcv5A4jLDTPG9u9OJaj5A7I6yxhKeky2Jt24GSCr315PCe2Nvww9yS1kZmT/
	IFZON4noRYFjsPHJNTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSPc9-00Dzf5-9E; Thu, 10 Mar 2022 20:42:25 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSPc4-00Dzej-2B
 for barebox@lists.infradead.org; Thu, 10 Mar 2022 20:42:21 +0000
Received: by mail-lj1-x231.google.com with SMTP id bn33so9439244ljb.6
 for <barebox@lists.infradead.org>; Thu, 10 Mar 2022 12:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xQC1KZ335zd02P/VoVNuigcTIAvVtwxBvZEUpTy4HlY=;
 b=nSpew07p4qD+73RbpL1r2ikaYnRp07HGXw4hcq84aspAgre91iiCD3JURt6UU3UymA
 PVbmfuvhAIq+bZdI+opO9J7ZXyZ/jSkrM2QabrDAvd9jzp6fvhBL3n3UWv3LwQc2Y+lh
 9O5ZyWpBE/LSvvLFiy4aew7SF+YtKO/Mi+MemcMxro4jYbMofFd2kV73a+Xc9yNkIEgY
 1oqwqRn8FVC1qcuwP5XiT+2X3ssL50iUnFVDZaoFmZ0fjGcBQPOCgC5ytAY1U+F3nbXx
 usQVjKPlCRH/3MjZI/VsRAaNxdmxhINGycFel4GCAiF3FokkJpbzOhMuN3uKKiBWOsd6
 oisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xQC1KZ335zd02P/VoVNuigcTIAvVtwxBvZEUpTy4HlY=;
 b=KBWVbjAjoyyYNGsYYwpSuZi3UHcCYlUDGe7KH/P5S0C9im0ggooN8TA9121tkcUrq2
 K2F/iGAnh3LmPjN7WQM5mJmm0v7QY/KU0blothLMIFxE1gCmyx6qQnXWnbTEnZSkLcit
 dCw6X2Xn3gLdENT2NamhTCRRrgtHSDT3Ad7m77hyXTnarl2LVFN4/+WeOlR5AVJVkIz8
 Nb/ZmdU97GxMjXVZ2gUAD4ARKr4sy8Ys/go2FduHCu4gUwmA9WRXvwGzDBQKugwNa7/9
 yrZ2MITrXbsB7M64OJ11hwEejeakLguITgyM/r06vIgmwbx4navgzZt4mPoTUo1WveMl
 ShbQ==
X-Gm-Message-State: AOAM533fVxZ40Lvt6y3CbJ0lC+R2ANJMr7GQAFSRmAn/4O7XoqZe19/X
 qsfXjkWocNAXY8G8XarJHhDfQMWwJ0M4qA==
X-Google-Smtp-Source: ABdhPJzg2+RRmiAsI3EEb7JFpEWJEck+U0JNj+T7JCYQmChAvGfQY8BLng7gJ++1wth9XUdFRhBymA==
X-Received: by 2002:a2e:9186:0:b0:247:de4e:e9b6 with SMTP id
 f6-20020a2e9186000000b00247de4ee9b6mr4096279ljg.377.1646944937793; 
 Thu, 10 Mar 2022 12:42:17 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 bq30-20020a056512151e00b0044313dc8e74sm1162238lfb.197.2022.03.10.12.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 12:42:17 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 10 Mar 2022 23:42:06 +0300
Message-Id: <20220310204206.31942-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220310173253.de205299b310b63f0094730e@gmail.com>
References: <20220310173253.de205299b310b63f0094730e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_124220_140657_A1ADDF9C 
X-CRM114-Status: GOOD (  16.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] MIPS: fix optimised memset returning garbage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is a subtle bug in arch/mips/lib/memset.S, used if option
MIPS_OPTIMIZED_STRING_FUNCTIONS is enabled, which results in not writing
the correct return value into v0 register if the value to fill memory
with is 0.

The bug stems from a missing '.set noreorder' directive before the first
beqz instruction. This results in an assembler stuffing a 'nop'
instruction in the beqz delay slot instead of an instruction writing the
return value into v0 register that was supposed to go there. That leads
to an error that appears when reading memory from SPI Flash and that was
mentioned here:
http://lists.infradead.org/pipermail/barebox/2021-June/036557.html

There are a few ways of fixing this bug. The directive '.set noreorder'
that shows up a bit later in code could be moved up and placed right
before the memset label (as it was originally in Linux codebase - see
a583158c9ce822c96a718fbf877cec1e5f9ad75d). Or, rather, the move and the
branch instruction could be swapped, thus allowing the assembler to
properly place move in delay slot (as it is done in Linux now - see
68dec269ee29c3abfd09596fbee7e40d875a6ab3) - that is what is done in this
patch.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/memset.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/memset.S b/arch/mips/lib/memset.S
index 0b81bd7d8d..cd4e4ccfe8 100644
--- a/arch/mips/lib/memset.S
+++ b/arch/mips/lib/memset.S
@@ -34,8 +34,8 @@
  */
 
 LEAF(memset)
-	beqz		a1, 1f
 	move		v0, a0			/* result */
+	beqz		a1, 1f
 
 	andi		a1, 0xff		/* spread fillword */
 	LONG_SLL		t1, a1, 8
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

