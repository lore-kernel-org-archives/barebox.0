Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXchk-0000J5-F8
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 17:51:53 +0000
Received: from beldin.local (unknown
 [IPv6:2a01:e35:2f37:a360:7a92:9cff:fe2d:4ee])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 24BBC9408D9
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 18:51:39 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 05 Dec 2011 18:51:38 +0100
Message-ID: <87r50ilxed.fsf@free.fr>
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
Subject: FAT filesystem write and long names stability
To: barebox@lists.infradead.org


Does anyone have a feedback about the FAT filesystem support in barebox ?

From my first tests, I think that :
 - long filenames is a bit buggy (when activated, I have a exception in a ls
 command)
 - write doesn't seem to work : on a mounted SD card, I make a "mkdir toto",
 then dismount and remount => the directory is gone.

Is anyone else doing tests in this area ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
