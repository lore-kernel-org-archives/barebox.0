Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejLBD-00065D-VB
 for barebox@lists.infradead.org; Wed, 07 Feb 2018 08:34:13 +0000
Date: Wed, 7 Feb 2018 09:34:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180207083359.rox4jc3bifqa3mix@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180202111442.12444-7-aleksander@aleksander.es>
 <20180206093002.nzokloyjtn7g46l5@pengutronix.de>
 <CAAP7uc+Mt=u1Tnua3Dgq3-5nHs8C6jFX6JnqwsFKcMcJt4vOkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAP7uc+Mt=u1Tnua3Dgq3-5nHs8C6jFX6JnqwsFKcMcJt4vOkw@mail.gmail.com>
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
Subject: Re: [PATCH 06/10] ratp: implement generic command support
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Feb 06, 2018 at 05:49:10PM +0100, Aleksander Morgado wrote:
> >> +
> >> +#define BAREBOX_RATP_CMD_START(_name)                                                        \
> >> +extern const struct ratp_command __barebox_cmd_##_name;                                      \
> >
> > You shouldn't use the same name as the existing barebox commands,
> > otherwise there might be name clashes. Add some _ratp_ to it.
> >
> 
> Ah, sure.
> 
> >> +const struct ratp_command __barebox_cmd_##_name                                              \
> >> +     __attribute__ ((unused,section (".barebox_ratp_cmd_" __stringify(_name)))) = {  \
> >> +     .id             = BB_RATP_TYPE_##_name,
> >
> > I am not sure if I like the magic construction of the id field. Being
> > able to grep for BB_RATP_TYPE_PING and finding the user has advantages.
> > How about manually setting the field in the body of the command instead
> > of constructing it?
> >
> 
> You mean doing this instead?
> 
> BAREBOX_RATP_CMD_START(PING)
>     .cmd = ratp_cmd_ping,
>     .id = BB_RATP_TYPE_PING
> BAREBOX_RATP_CMD_END

Yes, that's what I meant.

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
