Delivery-date: Mon, 06 Oct 2025 06:16:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdw-004lre-2P
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdv-0002s9-SH
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+eQKvgqYXMC2/6G2+TT5rHYEwUvp1AhmGfQ992wsg6o=; b=dHctMPTX8ltmAN2TeUonR9HNkq
	egkmIUcpyw4Onp0NIKtXMgyFa7mhqsSLqmA1+Dt5pm9IzYXp6wfUmnrXJG16fnaM+A15jcPtEkNwv
	Iw7gokY0XT9n4fsiDw3OLWtfObEz7LHT9qJDsR4k0U4w046bD+2K8q0o34CwbupqqmUPC4NzSU4ZE
	shBzvIMA4fnBJaP6N9uICkCnK1zp46Wudok0te8sOBvskIQ/f8zjZIyiIeY5DwrmfGQaOZTOGO62b
	Pni4fGGy7ppP5eqjIdsks8Xs2VCRkRVVYgsPOh1ATTdNW6ugb96JLNEa+Yy6ObmC5fbxFdTGRShQU
	mCBot6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdK-0000000GuOR-3YeA;
	Mon, 06 Oct 2025 04:15:34 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdF-0000000GuKi-3CUx
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:31 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4e4f8122660so45770941cf.0
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724129; x=1760328929; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+eQKvgqYXMC2/6G2+TT5rHYEwUvp1AhmGfQ992wsg6o=;
        b=k6PbwgsO5oZIDMRRGx8OKfY5qrKHMjdrYx7YnUxttXWZ4j1yqVmm+Nsk1eSdVRUsnp
         vtwlKDesoVs48Mf82SPZ7pjkXQuAkV8Nqjoo0tOEBHoF8aaongTzBW7+HTdGLJc8URM+
         LF+nck+IJD56qPFLNV9/3neY4a/bcQjPkKHiMgabAoB8vi0CGPCacvsTv2/dbMwBKi0Q
         yxiyB8tHnwFbtBOLzw0tz4vHA5qPkgdgxTy+gop1yHFVtYi6YcmBRWi/Xl9dtGQGKNsT
         vS/YfI1d72AZlRV2ltcM4jQ/5i2RJ98xDBe0XgY7SK6dFWxGDxGSwWgl9Y8pozifHhYS
         wcbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724129; x=1760328929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+eQKvgqYXMC2/6G2+TT5rHYEwUvp1AhmGfQ992wsg6o=;
        b=jtBJaxaIRdyDtOv0hsMrH/f0q3FWoBFfYFGbRnfPSOa7h1Qdcv9zDmsKkHFCmGaMgz
         pjICxJAuHDQrfhPwfMP/L1BYF/jrjc6BPHaSz/Xcgcpvg6hOFKgGh+SaKDVIuKjXB5Ht
         VYfW78oqXboJn56VzGFkVqLsMV0aZK+P+hMoVvr97zQCpN1MdjcG+mqtcGN1MK91UtHk
         eNz7Z/e2QOq1CHlW6OnCsbkOxvDHxp939dO6BGLPNphu9H9xq9XbXb6uJp3knHlPAVcB
         yiLatTtMoSTnDZ0rAEQUUEQy/txJzeA3CgqzsLMLqHqOJYW6WQYuI42TxdvmYYIDWcpj
         AEXA==
X-Gm-Message-State: AOJu0YySCfCjKMvM2Gwdc/NmtI/y1zlUofgrcZ2XTX3FL1viBmPi/q3S
	pk+lp/3HX0vR+Ge7vUtLj3ADNv7JbWTRFnPaMDSN5ltOwuZ8B0wWo4pm
X-Gm-Gg: ASbGncsuAqujoqrq3TZW1Y7B4ptZRdM6CZ/nZpvlnmYMOpmTjJigFyMoDeRn+atd2gf
	DffjYGJ9LLBr7ngv/cQhFkPJiVHIpf1uHCOhu+EzEkWPr+q6ZOAdMUQNBbA/1iTP5eBU0QuPKtp
	bG10aYA9iW95N2t9DcXlf8lCr4G/1jmZKn3ic6ITc7m1cWjHN+CPGz+PIhNvHTSeyrM1qup/yjO
	KIspliem3dmh5eqdHE6ebLE/fpUfmL0vSUNKhFZXyP3Zma8xN5KFVyBzu0rIuagvXPmvPonEt7p
	v7kb2OjYfJnWXrvwKzcED/54qvN7ohhtrYWlMzQNh7CYiRqOGrXrabpafprRoK56Bk6OdFOKQ2A
	FOg4bVE/ajdZEud1rlhXr48yEkgISxQEPXVLdDdS7l/mFyPX8GfBv4krBJ53u0VWe6wv9Oz8H/H
	E=
X-Google-Smtp-Source: AGHT+IHcoRURJPwYrFvdfsJhXqWG0rZGG3ssWbmNjGT6HLBJaWxKaz5UTBPngZy5ZA422O+g+NdfoQ==
X-Received: by 2002:ac8:5fc3:0:b0:4df:2f33:2601 with SMTP id d75a77b69052e-4e576b42235mr130489611cf.83.1759724128735;
        Sun, 05 Oct 2025 21:15:28 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:28 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 00:15:11 -0400
Message-Id: <20251006041512.1360284-10-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211530_320966_596AEB5D 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/11] efi: payload: make selectable without COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Now that the barebox EFI payload has support for a non-x86 boot method,
let's drop the COMPILE_TEST dependency.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 4fb866210a69..3b4a16e1e80c 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -4,7 +4,7 @@ config HAVE_EFI_PAYLOAD
 	bool
 
 config EFI_PAYLOAD
-	bool "Build as EFI payload" if COMPILE_TEST
+	bool "Build as EFI payload"
 	depends on HAVE_EFI_PAYLOAD
 	select PBL_FULLY_PIC if ARM64
 	select EFI
-- 
2.34.1



