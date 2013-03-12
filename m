Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFLjS-0006tF-0O
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 09:42:54 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 12 Mar 2013 10:41:14 +0100
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
 <1363080597-10510-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363080597-10510-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201303121041.15305.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: head: Add some space behind the image header
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> [...]
> +/*
> + * 32 bytes at this is offset is reserved in the barebox head for board/SoC + * usage
> + */
> [...]

Hmm, one 'is' too much in this sentence?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
