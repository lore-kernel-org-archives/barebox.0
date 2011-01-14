Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdXCb-0006Hn-2h
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 00:07:37 +0000
Received: by iwn38 with SMTP id 38so2114546iwn.36
	for <barebox@lists.infradead.org>; Thu, 13 Jan 2011 16:07:34 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 14 Jan 2011 11:06:59 +1100
Message-Id: <1294963621-4177-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Add basic driver for 24clxx eeproms
To: barebox@lists.infradead.org

Hi,

I did this driver a while back, and almost forgot about it. The first
patch is required so that the board can pass in the size of the eeprom when the
device is probed.

Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
