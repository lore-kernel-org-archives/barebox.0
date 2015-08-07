Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.icid.cu ([200.55.133.90])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNip0-0004pN-SG
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 14:40:38 +0000
Received: from icid.cu ([10.10.0.3])
 by mail.icid.cu (8.13.8/8.13.8) with ESMTP id t77De6TJ015270
 for <barebox@lists.infradead.org>; Fri, 7 Aug 2015 09:40:09 -0400
Received: from [10.10.8.78] by icid.cu
 (Cipher TLSv1:RC4-MD5:128) (MDaemon PRO v9.6.1)
 with ESMTP id md50008240462.msg
 for <barebox@lists.infradead.org>; Fri, 07 Aug 2015 09:56:43 -0400
Message-ID: <55C4C388.9060102@icid.cu>
Date: Fri, 07 Aug 2015 10:41:12 -0400
From: Roberto Alejandro Espi Munoz <raespi@icid.cu>
MIME-Version: 1.0
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
Subject: serial port weird chars ...
To: barebox@lists.infradead.org

Hi ... I'm currently having some trouble with displaying characters 
correctly in my terminal.  I'm using a board equivalent to the 
mini2440.  This one has a NOR and a NAND.  I connect to it over a serial 
port interface.  When I boot up the board in debug mode I'm able to see 
clearly the messages displayed by the S3C2440A USB Downloader which is 
copied in the NOR interface, I then download my barebox binary over the 
USB interface and when it boots I get a lot of weird characters on 
screen.  The console seems to respond correctly, I issue for example the 
"reset" command and it resets but I can't make out what is displayed.   
I was guessing at first a serial port configuration problem on my 
operating system (I use Linux), tried it over on Windows and same 
effect, the first bootloader works great and barebox when starting just 
mangles the characters.

The other weird problem is than when I use a USB-Serial converter to 
connect to the board's serial port everything works !

I'm currently using barebox 2012.09 and OpenSuse Linux 13.2

Any ideas ? thanks


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
