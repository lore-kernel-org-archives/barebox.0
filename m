Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TWZu3-0002sF-6G
 for barebox@lists.infradead.org; Thu, 08 Nov 2012 21:44:47 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so4876343iej.36
 for <barebox@lists.infradead.org>; Thu, 08 Nov 2012 13:44:46 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1352409401-3333-1-git-send-email-robert.jarzmik@free.fr>
References: <1352409401-3333-1-git-send-email-robert.jarzmik@free.fr>
Date: Fri, 9 Nov 2012 01:44:46 +0400
Message-ID: <CAA4bVAHfj7jX-Qb_4OvOPe73nSLaRmEadQd=c_cRHemODgxZzg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 9 November 2012 01:16, Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> The current Y-Modem implementation has some limitations:
>  - Y-Modem/G protocol is not supported
>  - Multiple files (aka. batch) transfers are not supported
>  - Transfer speed over fast lines (USB console) is slow
>  - Code is not trivial to maintain (personnal opinion)

personal


> This implementation tries to address all these points by
> introducing loady2 command.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
