Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdqYE-0003lD-KG
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 05:55:48 +0000
Date: Mon, 31 Dec 2018 06:55:42 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181231055542.GC25643@ravnborg.org>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
 <1546178368-26182-5-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1546178368-26182-5-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 04/11] kbuild: add %.lex.c and %.tab.[ch] to 'targets'
 automatically
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Sun, Dec 30, 2018 at 10:59:21PM +0900, Masahiro Yamada wrote:
> Linux commit b23d1a241f4eb44ae55785c9b65274717c8e2c1e
> (adjust commit log for barebox)
> 
> This will be needed for Barebox to switch to the compile-time
> generattion of lexers and parsers.
  generation

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
