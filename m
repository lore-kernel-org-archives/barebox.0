Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFz65-00020a-Q0
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 07:30:46 +0000
Received: by mail-wm0-x244.google.com with SMTP id 187so8338219wmz.1
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 00:30:25 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <1466570369-1950-2-git-send-email-andrew.smirnov@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-2-git-send-email-andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 09:30:22 +0200
Message-ID: <878txwpdkh.fsf@gmail.com>
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
Subject: Re: [PATCH 2/3] GUI: Add code to draw simple graphics
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

> +config 2D_PRIMITIVES
> +       bool
> +

Why no help text?   With help text, it will be discoverable in "make
xconfig".

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
