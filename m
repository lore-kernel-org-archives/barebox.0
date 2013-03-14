Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG5Uk-0000eB-UI
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 10:34:48 +0000
Date: Thu, 14 Mar 2013 11:34:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130314103444.GI1906@pengutronix.de>
References: <514082C7.9090502@til-technologies.fr>
 <20130314073541.GC1906@pengutronix.de>
 <51419FFB.1070608@til-technologies.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51419FFB.1070608@til-technologies.fr>
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
Subject: Re: [PATCH 4/5] gadget: possible null pointer dereference fix
To: Cerrato Renaud <r.cerrato@til-technologies.fr>
Cc: barebox@lists.infradead.org

On Thu, Mar 14, 2013 at 11:01:31AM +0100, Cerrato Renaud wrote:
> For some reasons relative to my company , I'm not able to send emails 
> using git-send-email. I gave up.

What a pitty.

I know getting the tools right for sending patches can be quite a high
barrier sometimes. Most other Open Source projects will require the same
if you want to participate, so I think it's really worth it to set this
up, if it's not for barebox then it might be for the Kernel or whatever
project you might be interested in.

Most other people in your situation setup a Gmail account and end up
sending mails from home if necessary until they can put enough pressure
on their administrators.

Sorry, I don't like loosing useful contributions, but on the other hand
our workflow depends on being able to review and apply patches quickly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
