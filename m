Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:8b0:10b:1:222:41ff:fe2d:310a]
	by casper.infradead.org with esmtpsa (Exim 4.69 #1 (Red Hat Linux))
	id 1NKvEU-0002po-0I
	for barebox@lists.infradead.org; Wed, 16 Dec 2009 14:52:06 +0000
From: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 16 Dec 2009 14:51:59 +0000
Message-ID: <1260975119.11159.168.camel@macbook.infradead.org>
Mime-Version: 1.0
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
Subject: u-boot-v2 list renamed to barebox@lists.infradead.org
To: barebox@lists.infradead.org

This list has now been renamed to 'barebox@lists.infradead.org'.
Messages to u-boot-v2@ should still work though, for now.

If you are filtering list mail into a separate mailbox, your mail
filters will need to be adjusted to look for
'barebox-bounces.*@lists.infradead.org' in the Return-Path header or
SMTP sender, instead of u-boot-v2-bounces.

For example, in an Exim filter:

if "$sender_address" matches "barebox-bounces.*@lists.infradead.org" then
        save Maildir/.lists.barebox/
        finish
endif

Or in procmail:

:0:
* ^Sender: barebox-bounces.*@lists.infradead.org
$MAIL/barebox

-- 
David Woodhouse                            Open Source Technology Centre
David.Woodhouse@intel.com                              Intel Corporation


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
