Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJiSx-00033X-RG
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 12:57:00 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Fri, 6 Feb 2015 12:56:31 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BAB7263@mail-ying>
Content-Language: en-US
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Generate MLO for phytec-phycore-omap4460 
To: Barebox List <barebox@lists.infradead.org>

Good morning,
I am currently trying to build the MLO for the omap4460 on a Phytec Phycore board. In order to build it, I do the following procedure, but I get this size error at the end:

> make ARCH=arm CROSS_COMPILE=... phytec-phycore-omap4460-xload_defconfig
> make
....
  LD      barebox
  SYSMAP  System.map
  OBJCOPY barebox.bin
  CHKSIZE barebox.bin
barebox.bin size 53168 > of the maximum size 49152
make: *** [barebox.bin] Error 1

Curiously enough, the MLO is bigger than the 2nd stage barebox.bin I would generate with the config phytec-phycore-omap4460_defconfig.
In the documentation (boards/omap.rst), there is mention of a "barebox.bin.ift" file that corresponds to the MLO. However I don't have this file...only barebox and barebox.bin. 
Is my build procedure correct ?




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
