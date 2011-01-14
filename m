Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PdiLQ-0006Wl-P0
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 12:01:29 +0000
Received: by wyf22 with SMTP id 22so2671597wyf.36
	for <barebox@lists.infradead.org>; Fri, 14 Jan 2011 04:01:25 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 14 Jan 2011 12:01:25 +0000
Message-ID: <AANLkTimz8ffNYpkHYdKVwv4=khBn=JKMwjsRQB5DEK63@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
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
Subject: /dev/env0 not found
To: barebox@lists.infradead.org

Hi

How I come I don't have /dev/env0? I am on at91sam9263ek.

9263-EK:/ saveenv
saving environment
could not open /dev/env0: Read-only file system

9263-EK:/ ls -l /dev/env0
ls: /dev/env0: No such file or directory

9263-EK:/ ls -l /dev/
cr-------- 4294967295 zero
crw-------       3785 defaultenv
crw------- 4294967295 mem
crw-------   67108864 ram0
crw-------  268435456 nand0
cr--------    8388608 nand_oob0
crw-------         32 phy0
crw------- 3851423744 nor-352321538
9263-EK:/


regards

Nataraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
