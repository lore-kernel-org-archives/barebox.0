Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QYY2v-0000nl-2c
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 06:33:17 +0000
In-Reply-To: <BANLkTi=DFpLyEQwe62KSjYUn+pGPxPe1CQ@mail.gmail.com>
References: <BANLkTi=DFpLyEQwe62KSjYUn+pGPxPe1CQ@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <OFC37E6847.C715C816-ONC12578B5.00232B09-C12578B5.0024003B@phytec.de>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Mon, 20 Jun 2011 08:33:13 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: booting pandaboard rev A2 problems
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

barebox-bounces@lists.infradead.org schrieb am 17.06.2011 21:26:46:

> Von: Belisko Marek <marek.belisko@gmail.com>
> An: barebox@lists.infradead.org
> Datum: 17.06.2011 21:30
> Betreff: booting pandaboard rev A2 problems
> Gesendet von: barebox-bounces@lists.infradead.org
> 
> Hi,
> 
> I'm trying to boot barebox on Panda rev. A2.
> 
> I make panda_xload_defconfig compile and put to FAT SD card partition
> ranamed barebox.bin to u-boot.bin (MLO reads u-boot.bin by default).
build barebox.bin.itf with panda_xload_defconfig and rename it MLO
build barebox.bin with panda_defconfig and copy it to sdcard

So it boot till barebox.bin not found. Reducing the size of MLO fix that 
for me. I send a patch for panda_xload_defconfig 

Jan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
