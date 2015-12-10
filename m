Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp684.redcondor.net ([208.80.206.84])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a739I-00030H-Ih
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 15:28:54 +0000
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
 via TCP (outbound) with ESMTPS id 20151210152828010_0684
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2015 15:28:28 +0000
Received: from [66.46.196.8] (port=34564 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1a739k-0005AB-BV
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:29:20 -0500
Date: Thu, 10 Dec 2015 10:28:18 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.20.1512101025310.13554@localhost>
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
Subject: "make distclean" leaves a pile of arch/arm/dts/*.lzo files
To: barebox mailing list <barebox@lists.infradead.org>


  just did a configure and build for a beaglebone black, then ran
"make distclean" and ...

$ git status --ignored
On branch master
Your branch is up-to-date with 'origin/master'.
Ignored files:
  (use "git add -f <file>..." to include in what will be committed)

	arch/arm/dts/am335x-afi-gf.dtb.lzo
	arch/arm/dts/am335x-bone-common.dtb.lzo
	arch/arm/dts/am335x-bone.dtb.lzo
	arch/arm/dts/am335x-boneblack.dtb.lzo
	arch/arm/dts/am335x-phytec-phycard-som-mlo.dtb.lzo
	arch/arm/dts/am335x-phytec-phycard-som.dtb.lzo
	arch/arm/dts/am335x-phytec-phycore-som-mlo.dtb.lzo
	arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dtb.lzo
        arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.lzo
	arch/arm/dts/am335x-phytec-phycore-som-no-spi.dtb.lzo
	arch/arm/dts/am335x-phytec-phycore-som.dtb.lzo
	arch/arm/dts/am335x-phytec-phyflex-som-mlo.dtb.lzo
	arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dtb.lzo
	arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.lzo
	arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dtb.lzo
	arch/arm/dts/am335x-phytec-phyflex-som.dtb.lzo
	barebox-flash-images

nothing to commit, working directory clean
$

  so i'm guessing building for other targets will also leave .lzo
files lying around.

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
