Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s17.web-servers.com.au ([118.127.39.117])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vg7OP-0003xL-Ae
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 06:24:07 +0000
Received: from 220-244-174-13.static.tpgi.com.au ([220.244.174.13]:13540
 helo=dev2.cpdesign)
 by s17.web-servers.com.au with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.80.1) (envelope-from <marc@cpdesign.com.au>)
 id 1Vg7Nv-002ilg-9p
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 17:23:35 +1100
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 12 Nov 2013 17:07:35 +1100
Message-ID: <3749329.nT9HWVKCSz@dev2.cpdesign>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: handling script/init errors
To: barebox@lists.infradead.org

Hi,

Rarely, one of the commands (related to hardware access) in our startup 
scripts fails, and the unit startup ends up bailing to a console prompt. 
(Which is only on debug port, so no appropriate user feedback) 
This would end up appearing to the user that nothing has happened, and will 
either run until batteries are drained (or removed) or a special reset 
sequence is done.

Is there a way to set up an error handler in the scripts? Ideally, a command 
or script that could be called if /bin/sh encounters an error. 

I started looking through hush.c but soon thought it better to consult with 
anyone who actually might know ... :)

It's not an urgent problem, as all the troublesome units so far present 
themselves before they're shipped out, but now a more urgent (thankfully 
simple) problem has emerged, so now is a good time to try fix it.

Note: we're using a version based of 2012.07

Cheers,
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
