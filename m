Delivery-date: Tue, 11 Apr 2023 11:40:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmATz-00HQ2K-NU
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 11:40:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmATz-0007kW-FY
	for lore@pengutronix.de; Tue, 11 Apr 2023 11:40:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+ir/Al0/9G6/e7yAlP4oWVgLpc147f5pcY1CnnsUFUI=; b=NTsM2W0kPA7UCfKK+AGx1wR5uk
	VlB8ypx7orQzX/cs9scX1AJB9DkOqiaUFGKa4nM5r49lzm3FhPSaNoVbnKZ6Wm6UdH1gHAadYsjhV
	mfv8Fgz6ZuSu3Ej05uu/bhT5Y8FM0FuWjM1COJW2x0tqaplNSyjMjuq1/Pupa0xrDe+E38/WJfa3q
	rnZCFOvLFpEvP7fU/oP8ZOLrBGG5HbhLMqJ8pIQf1fgz5viw4kzpw0DwzN7ax+ekKQQIcWDM5Kjjb
	S/+n61pg12EIQE5a8dEZs4A4W0tco/NllQMyg/6txAo5r51CX7bIpyx0VK/cF7BPmeaKaNjPZ/Tzb
	TiqCvFGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASn-00H69K-26;
	Tue, 11 Apr 2023 09:38:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASi-00H649-2r
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 09:38:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASd-0007RF-Rh; Tue, 11 Apr 2023 11:38:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASd-00ATJD-0m; Tue, 11 Apr 2023 11:38:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASc-005Zvr-3B; Tue, 11 Apr 2023 11:38:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue, 11 Apr 2023 11:38:41 +0200
Message-Id: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_023852_924909_7D18CB2B 
X-CRM114-Status: UNSURE (   5.81  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] scripts: imx: make imx-usb-loader compilable for MinGW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While the system flashing Linux is often running Linux itself, it may
be Windows instead. To support this, let's support building
imx-usb-loader for Windows.

Only compiled-tested on Debian 11 with:

   x86_64-w64-mingw32-gcc (GCC) 10-win32 20210110 (gcc-mingw-w64-x86-64-posix)
   libusb-1.0.26-binaries.7z  (from Github releases page)

  CC=${CC:-x86_64-w64-mingw32-gcc}
  LIBUSB=${LIBUSB:-../libusb-binaries}
  
  CPPFLAGS="-isystem $LIBUSB -I scripts/include/ -I include/mach/"
  LDFLAGS="-L $LIBUSB -lusb-1.0"
  
  $CC -c -o imx.o scripts/imx/imx.c $CPPFLAGS
  $CC -c -o imx-usb-loader.o scripts/imx/imx-usb-loader.c $CPPFLAGS
  
  $CC -o imx-usb-loader.exe imx.o imx-usb-loader.o $LDFLAGS


Ahmad Fatoum (3):
  imx-usb-loader: don't depend on arpa/inet.h for endianness conversion
  scripts: compiler.h: add Windows support
  scripts: common: drop unused mman.h include

 scripts/common.c             |  1 -
 scripts/compiler.h           | 33 ++++++++++++++++++++++++
 scripts/imx/imx-usb-loader.c | 49 ++++++++++++++++++------------------
 3 files changed, 57 insertions(+), 26 deletions(-)

-- 
2.39.2



