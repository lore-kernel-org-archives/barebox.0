Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaUKB-0008KO-6V
 for barebox@lists.infradead.org; Thu, 09 May 2013 17:08:11 +0000
Date: Thu, 9 May 2013 19:07:44 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130509190744.77b81d09@skate>
In-Reply-To: <1368107382-25787-1-git-send-email-plagnioj@jcrosoft.com>
References: <1368107382-25787-1-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/1] login: disable input console if password wrong
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Dear Jean-Christophe PLAGNIOL-VILLARD,

A few minor English nits.

On Thu,  9 May 2013 15:49:42 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:
> so we garantie that barebox is secured again user interaction

guarantee

> +static bool console_input_allow = true;

console_input_allowed

> +bool console_is_input_allow(void)
> +{
> +	return console_input_allow;
> +}

console_is_input_allowed()

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
