Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x229.google.com ([2607:f8b0:4002:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn6Ot-0000Oj-5N
 for barebox@lists.infradead.org; Wed, 21 May 2014 13:17:43 +0000
Received: by mail-yk0-f169.google.com with SMTP id 200so1536820ykr.14
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 06:17:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400533184-668-4-git-send-email-s.hauer@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-4-git-send-email-s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 15:17:20 +0200
Message-ID: <CAOpc7mEMKbWg244JHWx3emMr0Mt1VMmkK0gKC97+LS_7jSA6UA@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 3/6] commands: add of_dump command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> +               -f <dtb>        work on <dtb> instead of internal devicetree
> +BAREBOX_CMD_HELP_OPT  ("-f <dtb>",  "work on <dtb> instead of internal devicetree\n")

In my command-rework patches I have used "-f FOO" instead of "-f
<foo>". Two reasons:

1. saves 2 bytes
2. less occurences of column align fixup with extra \t needed

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
