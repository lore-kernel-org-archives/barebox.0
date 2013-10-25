Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZcGn-00053W-4A
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 07:57:22 +0000
Received: by mail-ee0-f50.google.com with SMTP id l10so1701670eei.37
 for <barebox@lists.infradead.org>; Fri, 25 Oct 2013 00:56:58 -0700 (PDT)
Received: from gmail.com (a89-182-9-135.net-htp.de. [89.182.9.135])
 by mx.google.com with ESMTPSA id b42sm14536293eem.9.2013.10.25.00.56.56
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 25 Oct 2013 00:56:57 -0700 (PDT)
Date: Fri, 25 Oct 2013 09:56:51 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131025075651.GA86782@gmail.com>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
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
Subject: Re: [PATCH 0/6] simple framebuffer driver with RPi support
To: barebox@lists.infradead.org

On Thu, Oct 24, 2013 at 10:23:40PM +0200, Andre Heider wrote:
> This set adds a common simple framebuffer driver for platforms which choose
> to support it. RPi support is part of this set.
> 
> The driver serves two functions:
> * a framebuffer driver for barebox
> * pass an active framebuffer configuration to a loaded kernel

Pondering over this again, this is probably the wrong approach. There's
no need for a distinct simplefb driver for barebox, bcm2835 can have its own
fb driver like everyone else, and the simplefb configuration for the
kernel can be done independent of the fb barebox driver in use...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
