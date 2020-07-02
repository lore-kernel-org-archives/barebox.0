Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqzZv-00009y-VB
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 13:48:40 +0000
References: <20200702113523.GA5528@localhost.localdomain>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f106ed79-5a62-8118-48d4-38f2eabac03a@pengutronix.de>
Date: Thu, 2 Jul 2020 15:48:38 +0200
MIME-Version: 1.0
In-Reply-To: <20200702113523.GA5528@localhost.localdomain>
Content-Language: en-US
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
Subject: Re: sandbox: barebox executable for x86_64 is nonfunctional
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org



On 7/2/20 1:35 PM, Peter Mamonov wrote:
> Hello, Ahmad,
> 
> After 54d47eb7e "sandbox: support forcing 32-bit x86" the sandbox barebox 
> executable produced on x86_64 host is nonfunctional, i.e. it exits right after 
> start. Reverting the mentioned commit does fix the problem.  The host is 
> running a bit outdated Debian bullseye/sid, gcc version is "gcc (Debian 9.2.1-19) 9.2.1 
> 20191109". Here are the commands I've used to build and run barebox:
> 
> 	$ export ARCH=sandbox
> 	$ make mrproper && make sandbox_defconfig && make -j4 -s
> 	$ ./barebox
> 	$ echo $?
> 	1

You're right. Apparently I did some last minute fix and only retested that COMPILE_TESTing
works, not that it can actually be started... Luckily there is no release with this
patch yet. I just sent a fix out.

Thanks for the the report,
Ahmad

> 
> Regards,
> Peter
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
