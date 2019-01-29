Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.a-ix.net ([2a03:4000:21:445::fe61:e52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goQqR-0000u6-3B
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 10:42:20 +0000
Received: from web.lxd ([172.22.0.93] helo=mail.a-ix.net)
 by mx0.a-ix.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <ml+barebox@moritz.augsburger.name>)
 id 1goQqL-00058d-Nn
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 10:42:14 +0000
MIME-Version: 1.0
Date: Tue, 29 Jan 2019 11:42:13 +0100
From: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Message-ID: <c0358da915d386604bf576935cb49530@moritz.augsburger.name>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Raspberry Pi: Access Firmware-FDT
To: Barebox List <barebox@lists.infradead.org>

Hi,

on the RPi, the firmware binary blob assembles and enriches the dtb/dtbo 
files, puts the created fdt into memory, storing the location in r2.

I found a discussion proposing a patch 
(http://lists.infradead.org/pipermail/barebox/2018-June/033460.html) 
that was never included.

Is there currently any way to boot the kernel with the firmware created 
fdt?

Moritz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
