Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8QT-0001Ez-DB
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 08:01:30 +0000
Date: Tue, 17 Sep 2019 10:01:26 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
References: <20190915193114.3243-1-contact@stefanchrist.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915193114.3243-1-contact@stefanchrist.eu>
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
Subject: Re: [PATCH] docs: add python version in shebang
To: Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org

Hello Stefan,

On Sun, Sep 15, 2019 at 09:31:14PM +0200, Stefan Lengfeld wrote:
> On my machine 'make docs' fails with
> =

>     Traceback (most recent call last):
>       File "/home/stc/git/barebox/Documentation/gen_commands.py", line 15=
6, in <module>
>         parse_c(source)
>       File "/home/stc/git/barebox/Documentation/gen_commands.py", line 34=
, in parse_c
>         for line in file(name, 'r'):
>     NameError: name 'file' is not defined
> =

> because /usr/bin/python points to python3 instead of python2. Fix this
> by including the language version in the shebang of the script.

It would be much preferable to convert this code to Python3. I looked
into that and it wasn't that hard to even make it compatible to both
Python 2 and Python 3. (One downside is that Python 3 is more picky
about file encodings, so I have to insert a patch that converts the few
latin1 file left in the tree to utf-8 first. But as this is a good thing
on its own (IMHO) that's not too bad.)

Find the two patches in reply to this mail.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
