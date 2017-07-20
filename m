Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.itk-engineering.de ([212.121.145.30])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYBDc-0004fA-Vs
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 13:10:21 +0000
Received: from vwexchange001.itk.local (vwexchange001.itk.local [10.61.0.114])
 by mx0.itk-engineering.de (8.14.7/8.14.7) with ESMTP id
 v6KD9odJ021897
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <barebox@lists.infradead.org>; Thu, 20 Jul 2017 15:09:50 +0200
From: Martin Hollingsworth <Martin.Hollingsworth@itk-engineering.de>
Date: Thu, 20 Jul 2017 13:09:54 +0000
Message-ID: <a4ee1a13786643a29c3ae0c998da3511@itk-engineering.de>
Content-Language: de-DE
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
Subject: Barebox state on am335x-phytec-phycore-som
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I am trying to enable the barebox state framework and use it to store the bootchooser variables on the am335x-phytec-phycore-som board. I want to do that, so that the variables can be stored in EEPROM rather than in NAND (due to write/erase cycles).

I am following the steps from the documentation and from the mailing list from 2016 (http://lists.infradead.org/pipermail/barebox/2016-October/028312.html). However, all entries I try to add to the DTS/DTSI files fail to compile with a syntax error, even the example dtsi entry from the documentation.

Has anyone running a similar configuration and could help with some advice what has to be adapted? Can anyone recommend a good example code of the barebox state placed on EEPROM?

Thanks and regards,
Martin Hollingsworth



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
