Delivery-date: Thu, 18 Sep 2025 09:45:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Kz-004NxX-2A
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Ky-0001lx-H4
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H5uDQn+qsBHKEtqSkwiLtNh6T1i2m+rcPWtdXUuWi5A=; b=Ugf91Q+yytzjla8WGYzdUmu0H8
	cF7HivLCskY2/ieZ4sMXUeeZK+9/WnOgE+3oJpeSwvWLSfDdVqTzq1RUS22sn136rh4uuf+dWOdc6
	dv8T7nlyhk05qHdKRx3mxSi4C6vyZaEeb+udQJVlXJBTXispbwAOuRFy8WtiQzwMbhI3S+vv+DzGI
	A5Mmd3A2ueXroC1CRa8063xO97tR93WzFZb7jmd44J7JuS5qfKfYF+jwVNRA3/mgpN5yvKYrxiUpS
	67rOOTFtrKzQJlp4mTa5hGzeb5K3CP4wgsdtifwybqKuZEE0MRNhtwnQA3OJBG83IRtw5UhDlQ79U
	WXQlzT0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KQ-0000000GaTJ-4AmH;
	Thu, 18 Sep 2025 07:45:18 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KM-0000000GaNS-19DQ
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:15 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b0aaa7ea90fso85125566b.1
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181512; x=1758786312; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H5uDQn+qsBHKEtqSkwiLtNh6T1i2m+rcPWtdXUuWi5A=;
        b=YjN3ttoZQsx0HLQ59kqH4oqkNFAotXeUqy0rIHXKbsoOWehfGmevicO5GlJsgpoRuN
         HhTpH41RRcx4FnwB8i3JfTZstrE0LjMH4UHsrV6dGFDSUuMUSN/YrZfAbhFnE6fdnyrk
         x7I1XF0Js6mZU+Nta0sj4YTOEnPvYXuOr8hrN7tOvPuxGpZlukycQi6azegLW8UluH3q
         k4ZnhKDk3EA958n5D3Qg+yBHp/74++WGPcbS7h4We/wA5MmiR4oTGRy5nsCqVF+SSPlF
         0AYL+ae/PTcQFIdX8YTa9O3kqUOAPptAmg49GqssFKCxBnbzVPsp3dzyIl6pelHozEV7
         Xihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181512; x=1758786312;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H5uDQn+qsBHKEtqSkwiLtNh6T1i2m+rcPWtdXUuWi5A=;
        b=s4WirLIMNSy/Lrqi4r8bG1QVGGn3k4FgkRK9I0+03SQsonfnkj/IHrHINneztC15wZ
         ZR5ads46cuKo2n8fQ66YTwFFgm0k9AU40nYrYep0UjmifjRqLrehmZ5QbSrT0Nbhl6qW
         N8ecAt4p1pl4wttIPyzCHmMthOSTwJ2GUsH6Fdyp6oAoCnrDgZ0K1GvU+ylp0Dd0Wgfc
         n7eK6mj6KhFwEZaWWuj87RWRRkDNZLrd0IZ8Cy18aNQ3UvcflWoMUqHsPPVrSkjUl6gb
         GyT4L95yFXE8O26aPZEHK89uBiErOEKtLnq8CrsiK+LIItc8asMWCIQZ2S4yu4oMOY5z
         JtoA==
X-Gm-Message-State: AOJu0YxQ/cXtO1UfBd2GsE1x98USUf+vsIGJ1GMFROfNir6T3L0qYXNc
	LO9oCPhCdbN8Q7WJjFTrRIxLjtyUgvhwUZz00RXIedFX4iyKF8FfeI0q0x/378RsTxY9RYQaqiN
	AvFRB
X-Gm-Gg: ASbGnctJsfkgfygOYGDDOI3LWz1a/xlN02uCp2UjeRPPPYlGmdTyY2PwG71utVBf3q4
	hLqXFRQOFETW7VZEY/Guad/K1Ztulau714MknkoIj3rR7k+TkjdYUbNGk4D3QeZSybA8FBqKY0L
	Xpt063B2Ti0PnNuHROxJSvKjWKIlTB95bNYLqGO8lNSOp3uNK3AVBwtYskO4faf3/RvZOn06NgY
	apvOhThrOvhD8QGAUkAsTeu77YGsD4xNFHya5OkamrmgBzw2VTaR38O6LoyhSGmM2hfuAQ7Xu3F
	f7sHomD/MlWiMEgO7pe/+Xeeu7AvglmaAwMY815vb4NfiR2imYw7IZZsEvbUft2ZBHTUPszm3Ya
	ZemCQz5zODU5Klt7+TDgVcL8cvoFUaTc8Mp03JmMnTwjiEr7Tno0KsdoDWiMqCUI9dj6rigKjXj
	EXEmLH60pC
X-Google-Smtp-Source: AGHT+IE1WA6hY3b4bNP5gD7P1H8p0c9BMgOsd8HjhqBXMIDL1IVw7y7j1veW6YyTYnSvF3w24O5L+Q==
X-Received: by 2002:a17:907:2d25:b0:b04:274a:fc87 with SMTP id a640c23a62f3a-b1bb17cad60mr596624666b.4.1758181512110;
        Thu, 18 Sep 2025 00:45:12 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.11
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:11 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:17 +0200
Message-ID: <20250918074455.891780-8-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004514_363864_26258608 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/11] ci: pytest: Enable testfs feature on malta boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By enabling 9p in the defconfig, we get access to the testfs feature,
which will enable the upcoming dm-verity labgrid tests to be run on
this platform.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 arch/mips/configs/qemu-malta_defconfig  | 4 ++++
 test/mips/be@qemu-malta_defconfig.yaml  | 1 +
 test/mips/qemu-malta64el_defconfig.yaml | 1 +
 3 files changed, 6 insertions(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index e5bc8ff8cb..64279f7ff4 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -58,6 +58,8 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_VIRTIO_CONSOLE=y
@@ -91,6 +93,8 @@ CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
+CONFIG_9P_FS=y
+CONFIG_9P_FS_WRITE=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
index a3d34a660d..2f3b7e674b 100644
--- a/test/mips/be@qemu-malta_defconfig.yaml
+++ b/test/mips/be@qemu-malta_defconfig.yaml
@@ -14,6 +14,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-pci
+      - testfs
 images:
   barebox-qemu-malta.img: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img"
 imports:
diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
index 5562f59dc7..dfbdb21ee8 100644
--- a/test/mips/qemu-malta64el_defconfig.yaml
+++ b/test/mips/qemu-malta64el_defconfig.yaml
@@ -14,6 +14,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-pci
+      - testfs
 images:
   barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
 imports:
-- 
2.43.0



