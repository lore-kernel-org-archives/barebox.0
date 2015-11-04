Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu0vj-0000aa-87
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 16:29:00 +0000
Received: by lbblt2 with SMTP id lt2so1186874lbb.3
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 08:28:36 -0800 (PST)
Date: Wed, 4 Nov 2015 19:51:49 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151104195149.0883221bdb2163bd9fc82cb5@gmail.com>
In-Reply-To: <20151104154142.GA27677@gmail.com>
References: <20151104154142.GA27677@gmail.com>
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
Subject: Re: Source command with zero-sized files
To: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Wed, 4 Nov 2015 16:41:42 +0100
Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com> wrote:

> Using source command (source <file> or . <file>) on zero-sized files cras=
h barebox.
> Can anyone confirm this?

I can confirm this!

Here is sandbox log:

barebox@barebox sandbox:/ ls -l env/empty
-rwxrwxrwx              0 env/empty
barebox@barebox sandbox:/ source env/empty
Segmentation fault


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
