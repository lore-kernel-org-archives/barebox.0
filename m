Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcbPH-0007xE-S8
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 11:29:25 +0000
Received: by wibhq15 with SMTP id hq15so1161393wib.36
 for <barebox@lists.infradead.org>; Mon, 19 Dec 2011 03:29:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1324286241-23083-4-git-send-email-robert.jarzmik@free.fr>
References: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
 <1324286241-23083-4-git-send-email-robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 14:29:19 +0300
Message-ID: <CAA4bVAEAOhNDRj7dfZBf2Nkrjv5Bot9iTiX7CJ7PCj6YcXUN7Q@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: add hexdump command
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 19 December 2011 13:17, Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> Add a hexdump command to copycat the "hexdump -C <file>"
> unix standard command.

md -b -s <file> ?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
