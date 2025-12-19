Delivery-date: Fri, 19 Dec 2025 11:38:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsv-00DAiV-2n
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsa-0006lE-Ts
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NcvGie0q72CvEm+zfjLWhKP8Q+trrxwGiy62Z2IaTXI=; b=bJAMHtZ3r0DnDgi45kaEW+t/Qu
	m5Aquq+5ruYETMYJoA9spXIHWaukaQ92JkfQYlxkaeKGI45ZGG9ffFEN1j73vAcljGk9wgvwXUX20
	sZiUoRsQPFnVAwMFfoi17T58SMmdODEQCoWDa84cBqUUTdJJ6+f2680pX5O2oMaK7u7s0lYzVN8To
	t/DS73QDSKWuJb/B0CXyfyFNMlRdTTG7LbnwHbFP5CDkgruP42kkSW55bM4Se/y6eWUoKlC6/CpAL
	Y7L6qVh68te/KvywESHI07d7y4UNePg+XnuOi/SoqWX2goQLbE/bWikWgT9d9aMXRf89Nev7kvqzM
	Doz5fq+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrQ-0000000A6fH-3L81;
	Fri, 19 Dec 2025 10:37:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqz-0000000A65u-3nUd
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NcvGie0q72CvEm+zfjLWhKP8Q+trrxwGiy62Z2IaTXI=; b=p5C1pR5b+veHnpWzgdB6hNOBe1
	Ibq5hC26PMEmN9Rm59a6+8WRrPfLzsYavfH4topyT8XZMqKICyH31JO1fipWAlO0zcoLVEPCiJRtm
	AvSKQ/feiXARi185jOlZFRgWIytEfFFvfFUowBA/xksc/9/lsGzmvyGw4T7yQRaLg4bGRNwnVkYlm
	KyR9JC01wooaug74S1NVDF3yQpIhAzTJFdaCJLNUZqdvXSmDoZnXfj7xfaWrenSwBFiyYgA31LDQp
	bxH0rE2eFrvIxQ22Sxg5LM8DrNPdJoDNPuO62Ms1E45bMVyeoRFjM42vLdDyiQHR+cAPBYAi/Jirx
	wxqra8dw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqu-00000007RTI-0Uxu
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004hc-UQ; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RWC-1w;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-3hum;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maudspierings@gocontroll.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:06 +0100
Message-ID: <20251219101453.2806980-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103652_260801_DDB2C98C 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 30/49] scripts: imx: Makefile.mingw64: add _GNU_SOURCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

imx.c uses asprintf which requires _GNU_SOURCE to be defined, include
defines.h to define it.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251201-imx_usb-v2-1-95ec2a0e8694@gocontroll.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit ef66b9e0f1c7e2ec80ff8d57715d8794fa0949b4)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/Makefile.mingw64 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
index e012d833f1b4..101b39e9178d 100644
--- a/scripts/imx/Makefile.mingw64
+++ b/scripts/imx/Makefile.mingw64
@@ -30,7 +30,7 @@ $(if $(obj),, \
 # $(realpath ...) resolves symlinks
 obj := $(realpath $(obj))
 
-CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/
+CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/ -include $(src)/../include/defines.h
 LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
 
 OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)
-- 
2.47.3



