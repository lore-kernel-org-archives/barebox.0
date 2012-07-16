Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from c60.cesmail.net ([216.154.195.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqf9n-0001cr-T0
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 06:51:53 +0000
Message-ID: <20120716025032.0fj3voz8vc480scw-tcbagvf@webmail.spamcop.net>
Date: Mon, 16 Jul 2012 02:50:32 -0400
From: gpontis@spamcop.net
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="Yes"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Atmel SD/MMC info error (report only)
To: barebox@lists.infradead.org

If CONFIG_MCI_ATMEL=y and CONFIG_MCI_INFO=y, some useful info about  
the SD/MMC card can be displayed with "devinfo atmel_mci0". However,  
the parameter showing the number of bits used for transfers is  
incorrect. A SD card supporting 4 bit transfers is reported as using 2  
bits. A logic analyzer shows that in fact all 4 bits are actually  
being used.

GP

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
