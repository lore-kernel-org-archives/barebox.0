Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edcYH-00086L-6t
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 13:54:23 +0000
Received: by mail-lf0-x22a.google.com with SMTP id t79so10677382lfe.3
 for <barebox@lists.infradead.org>; Mon, 22 Jan 2018 05:54:10 -0800 (PST)
Date: Mon, 22 Jan 2018 17:08:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180122170831.684ce2c7b0d5421311d41528@gmail.com>
In-Reply-To: <20180122134020.GA22403@ravnborg.org>
References: <20180122100131.11820-1-antonynpavlov@gmail.com>
 <20180122134020.GA22403@ravnborg.org>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] sandbox: use 'poweroff' command for exit
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Mon, 22 Jan 2018 14:40:20 +0100
Sam Ravnborg <sam@ravnborg.org> wrote:

> Hi Antony
> =

> On Mon, Jan 22, 2018 at 01:01:31PM +0300, Antony Pavlov wrote:
> > The 'poweroff' command is more appropriate for exit
> > barebox than 'reset'.
> =

> Changelog says "reset" but code says "restart".

The command name is 'reset'.
No matter what is the file's name.
I can't see 'restart' command in barebox mainline master branch.

> Could the restart command be useful for others than sandbox?
> In other words, is it correct to delete this command?

I see no reason for dropping 'reset' command.
Sometimes 'reset' and 'poweroff' commands are very handy.

> 	=

> 	Sam
> =

> >  arch/sandbox/board/restart.c           | 17 -----------------


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
