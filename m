Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b0wUt-0006Rf-GG
 for barebox@lists.infradead.org; Thu, 12 May 2016 19:42:12 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 12 May 2016 19:41:45 +0000
Message-ID: <1463082107.9103.271.camel@rtred1test09.kymeta.local>
References: <5c4dfe40-5338-cdbe-f96d-a5275f75872b@arcor.de>
In-Reply-To: <5c4dfe40-5338-cdbe-f96d-a5275f75872b@arcor.de>
Content-Language: en-US
Content-ID: <FA9D9D852BF49347A05131C31E95FECA@kymetacorp.com>
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
Subject: Re: variables with random values
To: Giorgio <giorgio.nicole@arcor.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Have you considered using DHCP?  It would work a lot better, as you
won't have to worry about duplicate IPs or invalid IPs.

I think you'll have to write a new globalvar for barebox to get a random
value, since the shell doesn't support backtick substitution.

On Thu, 2016-05-12 at 21:34 +0200, Giorgio wrote:
> Hi,
> 
> I'm writing a shell script within barebox to assist an embedded board
> initialization process. Some commands in the script do firmware
> download with tftp; to allow initializing more than one board at
> a time I need to assign every board a random ip address; I would
> like to have a shell variable that every time it is dereferenced
> it results in a new random (8 bits) value so I could write:
> 
> eth0.ipaddr=10.$RND.$RND.$RND
> 
> Is there a way to do something similar in barebox ?
> 
> giorgio
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
