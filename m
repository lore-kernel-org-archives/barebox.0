Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail8.tpgi.com.au ([203.12.160.165])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PQxnJ-0000Vs-Kf
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 07:53:34 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 10 Dec 2010 18:53:20 +1100
References: <1291952264-3363-1-git-send-email-marc@cpdesign.com.au>
	<20101210064359.GD19897@game.jcrosoft.org>
In-Reply-To: <20101210064359.GD19897@game.jcrosoft.org>
MIME-Version: 1.0
Message-Id: <201012101853.20192.marc@cpdesign.com.au>
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
Subject: Re: [PATCH] arm: update mach-types
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi,

> PLwase specify against which kernel
It's directly from http://www.arm.linux.org.uk/developer/machines/

To be honest, I didn't even think about needing to match up against a specific 
version of the kernel, but I guess it does deserve consideration. 
From my understanding, the machine numbers are reserved forever and there is a 
1:1 correspondence between the mach number and the device itself. It's only 
the label that may change. So this patch would be bad if someone has changed 
their machine name, but hasn't changed their code within barebox.

I'll leave my thinking there because it's late friday arvo, and smarter minds 
have probably thought this one out before. :)

Otherwise, would it be better if I just submitted a "one liner" patch which 
just adds my new machine?

Cheers,
Marc
 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
