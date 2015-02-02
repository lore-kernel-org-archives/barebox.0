Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIOQC-0005k4-HU
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 21:20:40 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Mon, 2 Feb 2015 21:20:18 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BAB6D77@mail-ying>
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
Subject: Modifying Barebox variables from Linux
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I am working on an Phytec Phycore-OMAP4460 platform with a Linux BSP (provided by Phytec) which uses Barebox 2013.1.0 to boot the OMAP4. Our application previously ran in a Linux system where U-Boot was used. We could change U-boot variables from the Linux command line as follows:

fw_setenv bootargs 'mem=512M console=ttyS0,115200n8 noinitrd root=/dev/mtdblock4 ro rootfstype=yaffs2'

How would I go doing the same with Barebox ? Is bareboxenv-target part of the solution ? 

Many thanks,

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
