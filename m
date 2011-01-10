Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PcRLr-0005MK-Ni
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 23:40:41 +0000
Received: by iwn38 with SMTP id 38so20877811iwn.36
	for <barebox@lists.infradead.org>; Mon, 10 Jan 2011 15:40:35 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 11 Jan 2011 10:40:13 +1100
Message-Id: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] imx: Save boot source into env during init
To: barebox@lists.infradead.org

Hi,

This series cleans up the imx_boot_save_loc function and changes the values
of the exported $boot_loc variable to be more consistent with the IC docs, to 
avoid potential confusion (when say booting off an SPI eeprom, $boot_loc is
now "expansion" rather than "mmc")

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
