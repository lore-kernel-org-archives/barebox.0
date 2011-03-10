Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out2.bezeqint.net ([192.115.188.208])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pxara-0002uq-Fl
	for barebox@lists.infradead.org; Thu, 10 Mar 2011 08:04:51 +0000
Received: from remotel.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out2.bezeqint.net (Postfix) with ESMTPA id CA41D21207E
	for <barebox@lists.infradead.org>; Thu, 10 Mar 2011 10:04:30 +0200 (IST)
From: Itai Raab <itai.raab@wellsense-tech.com>
Date: Thu, 10 Mar 2011 10:04:18 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C0199AB3@SBS2008.wellsense.local>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Updating environments parameters from script
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I would like to dynamically update a parameters defined in /env/config (e.g  change kernel_loc=nand to kernel_loc=net) from the /env/bin/boot script.
Of course I would like it to be saved to the flash for next reboot.

Is there more elegant way to do it than parsing the /env/config file, modify the file and save it?

Thanks,



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
