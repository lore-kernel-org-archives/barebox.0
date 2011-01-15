Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe9OV-0005MI-D3
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 16:54:28 +0000
Message-ID: <4D31D138.4070105@free-electrons.com>
Date: Sat, 15 Jan 2011 17:54:16 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <1295034524-18722-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034524-18722-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: fix framebuffer memory base address
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/14/2011 08:48 PM, Sascha Hauer wrote:
> The following should fix the framebuffer base address when multiple
> video modes are enabled.
> Gregory, can you please check if this obsoletes patch 1/4 you sent?
> 

I integrated your patch in my git tree replacing my patch 1/4. I built
barebox, and I will test it on Monday on my board.

I didn't dare modify this file and I just touched the file related to my
platform. But clearly your patch seems better than my solution.

> Sascha
> 


-- 
Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
