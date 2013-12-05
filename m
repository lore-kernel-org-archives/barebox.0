Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoOAs-0006x0-Qh
 for barebox@lists.infradead.org; Thu, 05 Dec 2013 01:56:19 +0000
Received: by mail-bk0-f41.google.com with SMTP id v15so6899208bkz.14
 for <barebox@lists.infradead.org>; Wed, 04 Dec 2013 17:55:56 -0800 (PST)
Received: from x61s.Speedport_W_921V_1_24_000
 (p20030064AA87CB011A3DA2FFFE0D63D0.dip0.t-ipconnect.de.
 [2003:64:aa87:cb01:1a3d:a2ff:fe0d:63d0])
 by mx.google.com with ESMTPSA id pu8sm83347220bkb.9.2013.12.04.17.55.56
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Wed, 04 Dec 2013 17:55:56 -0800 (PST)
Date: Thu, 5 Dec 2013 03:04:07 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131205020406.GA3581@x61s.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: idea of alias command
To: barebox@lists.infradead.org

Hi,

maybe one of you know this... you type vim but means edit, but this
reminds you that you are in barebox and need to press ctrl-d instead
:wq or :x. After this you are happy to be in linux. :-)

So maybe we could add a "alias" command or a alias builtin function.
Don't know what's better to implement a new command or a builtin
function, but it should be to enabled or disabled via Kconfig.
(So we can save memory if somebody doens't need this little toy)

This command simply adds a an alias in aliases of struct command.

Is this a good idea or we don't need something like this in barebox?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
