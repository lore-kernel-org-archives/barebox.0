Delivery-date: Fri, 06 Jun 2025 12:50:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNUes-004LsZ-0r
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 12:50:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNUer-0001nQ-NQ
	for lore@pengutronix.de; Fri, 06 Jun 2025 12:50:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yHFRT43UjuoUy6BlEt+kJ7pPRi59x6WcMgIYwQljy1Y=; b=XIHiUzb3E1bWZn8CeaEmYEft2A
	Uo3HI3TTZlc6hfF09QSUBjd10NP2kB5ODIeGFiasK9S9qIciVjn/h+XW1pdzamzZu8kcbkcVpT4g7
	9hA6gto4WExuj7FgqKIFQaEngwNLX7CKoxx7VcdM//g0B3BV1XhX2LMlDFzX/G7W09B2xLOS+CBiD
	RB7hKAmFHrH9pbSU1xjaDS6PLE6i5a4I6eLThVPnCKrS0ItMgTj4S9Cxvrvv66UhO0GPnNITlNRFB
	DMlNqT4sQumnVELUPBR66OaGYnyNxjDG8rMXMAomjHpJMSxe0uLVvKCDn2cMC2Xepcz4DtSsnEg3G
	ctTT4Xgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNUe1-000000005Jj-3dWh;
	Fri, 06 Jun 2025 10:49:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNUZA-000000004UJ-42CH
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 10:44:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uNUZ8-0006CC-Bn
	for barebox@lists.infradead.org; Fri, 06 Jun 2025 12:44:50 +0200
Message-ID: <6e00946c-aeec-4f27-b4fc-a81920f79752@pengutronix.de>
Date: Fri, 6 Jun 2025 12:44:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_034453_001722_131FCC74 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: bbremote: Is it deprecated?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

As bbremote seemed very well documented at
https://www.barebox.org/doc/latest/user/remote-control.html
today I wanted to try it but it seems incompatible with python 3.13.3:

$ scripts/bbremote --port /dev/ttyUSB0 run "ls"
Traceback (most recent call last):
   File "barebox/scripts/bbremote", line 3, in <module>
     import remote.main
   File "barebox/scripts/remote/main.py", line 287, in <module>
     res = args.func(args)
   File "barebox/scripts/remote/main.py", line 51, in handle_run
     ctrl.export(args.export.encode())
                 ^^^^^^^^^^^^^^^^^^
AttributeError: 'NoneType' object has no attribute 'encode'


Tere are more, similar issues after working around this one by 
specifying --export '':

$ scripts/bbremote --port /dev/ttyUSB0 --export '' run "ls"
Traceback (most recent call last):
   File "/home/jo/repos/barebox/scripts/bbremote", line 3, in <module>
     import remote.main
   File "/home/jo/repos/barebox/scripts/remote/main.py", line 287, in 
<module>
     res = args.func(args)
   File "/home/jo/repos/barebox/scripts/remote/main.py", line 52, in 
handle_run
     res = ctrl.command(' '.join(args.arg))
   File "/home/jo/repos/barebox/scripts/remote/controller.py", line 151, 
in command
     r = self._expect(BBPacketCommandReturn, timeout=None)
   File "/home/jo/repos/barebox/scripts/remote/controller.py", line 134, 
in _expect
     self._handle(bbpkt)
     ~~~~~~~~~~~~^^^^^^^
TypeError: '_thread._ThreadHandle' object is not callable


$ scripts/bbremote --port /dev/ttyUSB0 --export '' ping
does "pong" but I'm giving up on trying to use or fix bbremote for now.

Is the perspective to deprecate bbremote (in favor of what?) or to port 
it to current versions of python?

I would like to update either the script or the documentation.

Regards,
Jonas



