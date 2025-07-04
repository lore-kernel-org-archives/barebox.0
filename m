Delivery-date: Fri, 04 Jul 2025 21:27:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXm4h-00E5df-2b
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 21:27:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXm4h-0005tU-8I
	for lore@pengutronix.de; Fri, 04 Jul 2025 21:27:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LtJGau1HVt4ZsvXkm3rzt/FlGgluHadCHfbWPoCCy1A=; b=RElcbSW0GLEShymT9rSmXXLgGM
	9TBGfIQOjI9M5+tQkFFz5coId0ccRECPW5eGHQC2etNy36+i4lKdU+Xqu3Iu4g+f1pEk/ECZCTPIb
	lXH8MSX82WAxsnw6yXzl9mK9kc5c6VGVpA1wPmKGT8XsBluyOCgfYJKDJ3srzFNIXjp156AV+wfUK
	g7p4UAtd/erevrd/d36NftgmGHzV97pMx/1YoAxIM/LJEsfQzEPqsLjwh2Mte/iSUxOBYC6xOOVcM
	GC+cUaKuy46h/2S2QiIqu9Bpn/ncAUttP4hmaj6JeFWQbkmLYTxsZdctB0Rv13S1iooHewtOmvjZt
	1Mufl3jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXm3z-0000000FKq7-1U88;
	Fri, 04 Jul 2025 19:27:11 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXm3w-0000000FKpM-1Fs2
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 19:27:09 +0000
Received: from Precision-T3610.Speedport_W_723V_1_49_000 ([84.147.167.150]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MvbOA-1urESK0pra-018Gmo; Fri, 04 Jul 2025 21:27:06 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	a.fatoum@barebox.org,
	Johannes Roith <johannes@gnu-linux.rocks>
Date: Fri,  4 Jul 2025 21:26:58 +0200
Message-Id: <20250704192658.18037-1-johannes@gnu-linux.rocks>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:3E3e+gP0RIsfvlpLYq2cIRL+lmev9Fh+Qk6VmAKHzo5IIEdPPCl
 B75vQpsQbHR3hAq6sTe4T1AJoL4vzOUNYj4U+G5iMUx8555x6juYdHQ6ThbXooWz4mODVYH
 BDuNjV3LWyLGC8EP+5S8fihSi5IE5NDq7VOMDI0N7hteT5zsE/aXbhad5ohX6lc6ZoJLpYf
 LOu9mE91fiMmpfivPquuw==
UI-OutboundReport: notjunk:1;M01:P0:InToZUUNo1Q=;VbPoWjCFJA18ZhxgVlK7w8rOwgZ
 FHeLlCO7k57Lm+iSWM5CaKNIZO3seTeOZceo2FXSS5aBdqBYGDy9QwGxtpB/Z1VB4m/l3tzg5
 A5uSjNbf/ZaT2QEd2UysIknyFi8RvC06p1xsfJIJxPBbjg51aIurYU1eHnzvBuoQKEoXcyHNr
 mEZJGeWfWKGhq4/voy0Ed7nI4MyPF9buwdapojTrz8KnRsEwjxbIR70WE7dHco3tVdZ2/draJ
 6dKn9jPI0wM0zhd2BnjrORCgyMROtMctC4Sv/keTQ/CCC+uK5/go00VTBu2LqmUc3nzVVJwRX
 fo09VEeD8hLsXfL41nXF8oPqrMgClDEw04h7s171NxPk01KOBvQPlmNECmi8FDcOVSQtAvb67
 wLx3VMvmRZNYZNSOsDZe22SZYIPKors6egN2bqkFfgQArtCcYr6+M0MeYvOnAlkuJFJAki5Pu
 7DywFomqKrFKRi/qB6Lpn483B9Ya26yus+5hu9QgpgKE3RCAUuCcffp0PbY9R/BGyp52GNpwC
 ZQ3xYsuUtRmqzkLi/JlN56hiDOmq4hQPY1ZzBKLt11kDFQABKTHLyooY8RZpB9VcrH0zGx3Q0
 NiMmCF1unzdmfGipk8EIlwU4/+Wzga6MCtsET2tDxKy1ek2/pS8UMWiEQLAPFCR5yZvJbE+ei
 GeQYnydlqB/CjO/WVvv1K7AITh5+ebP6BouaDY2PKYftCvFp6UX8bJZsLH9JYR1NCbjuCSw3X
 Qb6rna6LYtAs3pRKgRUgIgu2euVhj8DOpw8Byr6NaAGCNFVe1+Y7PZj9GbUjbtYhiyhLe+UJC
 P3Ro0T4Ml+UZ6tShVcxZrwRJpgmVGNMrxtwrC2lFFFiVFQn7DhmYjVD6fVchSMK14GikoiABw
 AFV+fG7teaSuX7n12k0dbwKkFWJZ+QW3xT/n9Xn8I8Tgv2SOx+POOns583eLDT4ESiLZ2h9yK
 NKQuwckSgH5qXekhIa7fyvruguJGUh67kU1J5cp41mBzfAjdKnpCStnyg9zFympy1zG3UrJB3
 pTwgn0LNWKvHSsrGyJKnSslaySmpzLW2aF4MISGeo5oGAw8hikJPoCS+X3baP7nncgLnUGhPP
 RFiIEbFpbBD24hGEjvhSjGb/wuZ5F4jZR6WgZDitc5lNtVq6Ti5wz4otlgzwDzb/cAOBrWRYz
 uceGt2ei68YhPQnnRh57O6f/aaDwqTxSdiZej8rXBezF2T4B57qkpolX5MSeSGln3olVeqb/H
 J/IZ3mnbjIiSMg22yYG9wX7Ans/fsQ0cOhWdnGcY726cvEUtwRQ2tKdbZwE5ehFeMHad0iilX
 VRW9GUJAddHsgQMj75FrbwakEon9V+kkDSj3jWO0XxNv8VQwakH52+bxBjgSXOf3Oi52mJ7c6
 46ERrwaGgdrfj9aEv5zhEdlw+v6jGbfDJ1QTWAo0AWn2ehylOkRoxW/aSLmQcV7VKyG27oL5i
 2OjYaL0I8SghAwOp1ywNmY6YXl7XIA3qSeoofSyAJe9VYnjR7cuom+Nk+BrYEXvjN8uv4mqZZ
 OMWPiOIZ3Z+4/l/iDufSv82e59U8t5Wxw/FThLzglw6BTm5vjLCpjdvheHS9GW5xxK5Pa/oo/
 B9DNiq+iDHjwzLJcu50aWVBIFe9+/sc/y+nhAXKcuE83KJOGJX/SQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_122708_628666_6D885C7D 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Added documentation for the Zynq 7000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Added documentation and build instructions for the Zynq 7000 and the
Avnet Zedboard.

Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>
---
 Documentation/boards/zynq.rst | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 Documentation/boards/zynq.rst

diff --git a/Documentation/boards/zynq.rst b/Documentation/boards/zynq.rst
new file mode 100644
index 0000000000..b7aaf3892c
--- /dev/null
+++ b/Documentation/boards/zynq.rst
@@ -0,0 +1,25 @@
+Xilinx Zynq 7000
+================
+
+Barebox has support for the Xilinx Zynq 7000.
+
+Image creation
+--------------
+
+The Zynq defconfig supports the Avnet ZedBoard. Use it to build the Barebox image::
+
+   make ARCH=arm zynq_defconfig
+   make ARCH=arm
+
+Create a FAT partition as the first partition of the SD card and copy the
+produced image ``images/barebox-avnet-zedboard.img`` into this partition.
+Rename the image to ``BOOT.bin`` which is the name the Primary Bootloader of the
+Zynq 7000 expects for the next stage.
+
+Bitstream loading
+-----------------
+
+The Zynq 7000 features an ARM Cortex-A9 processor (Processing System, PS)
+alongside a Programmable Logic (PL) component that functions as an FPGA. Barebox
+provides support for loading a bitstream into the PL through its firmware
+interface.
-- 
2.34.1



