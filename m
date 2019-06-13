Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbK0W-0005gO-Bu
 for barebox@lists.infradead.org; Thu, 13 Jun 2019 07:18:52 +0000
Date: Thu, 13 Jun 2019 09:18:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190613071845.gbct6h5kg7mlpk3a@pengutronix.de>
References: <70b8a552-c423-9e74-ae80-5385a90e35ba@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70b8a552-c423-9e74-ae80-5385a90e35ba@mev.co.uk>
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
Subject: Re: Strange behaviour of 'exit' command
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Ian,

On Wed, Jun 12, 2019 at 11:42:24AM +0100, Ian Abbott wrote:
> I noticed some strange behaviour in the 'hush' shell when the 'sh' and
> 'exit' commands are used:
> 
> ---------------------------------
> barebox:/ sh
> barebox:/ exit
> t: No such file or directory
> barebox:/ echo $?
> 127
> barebox:/
> ---------------------------------

After some digging:

in common/hush.c get_user_input() we have:

	static char the_command[CONFIG_CBSIZE];

This string is used for user input and is unfortunately shared between
different shell instances. The 't' that is executed is the 't' from
'exit'. Try ' exit' instead and you'll see the shell trying to execute
'it' ;)

the_command should be dynamically allocated, but since in_str is
currently statically allocated there is no place in the code to free
the_command again after usage.

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
