Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SuJO0-0001ba-3b
 for barebox@lists.infradead.org; Thu, 26 Jul 2012 08:25:34 +0000
Received: by pbbrq13 with SMTP id rq13so3092009pbb.36
 for <barebox@lists.infradead.org>; Thu, 26 Jul 2012 01:25:28 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
Date: Thu, 26 Jul 2012 18:25:24 +1000
Message-ID: <002601cd6b08$37498d50$a5dca7f0$@cpdesign.com.au>
MIME-Version: 1.0
Content-language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: Way to clear nand bad block table
To: barebox@lists.infradead.org

Hi,

Is there a way to clear the nand bad block table?

I'm not sure what happened, but I was playing around with barebox init and
didn't register the nand device - then when I booted the kernel there were a
stack of UBI errors. 
I assume this also did something to the bbt as subsequent barebox startups
give a heap of bad block messages. Note not all blocks are bad - tested with
nandtest and there's still some R/W going on.
All the code I looked at seemed to indicate that once a block is marked bad
you can't go back.

Any ideas much appreciated.

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
