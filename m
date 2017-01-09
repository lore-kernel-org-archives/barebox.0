Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m12-14.163.com ([220.181.12.14])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cQZgs-0004Yo-K6
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 13:08:49 +0000
Date: Mon, 9 Jan 2017 21:08:17 +0800
From: Du Huanpeng <opentkernel@163.com>
Message-ID: <20170109130817.GA1390@book>
References: <1483800326-14277-1-git-send-email-opentkernel@163.com>
 <20170109082025.xijkeym5rqdgfv37@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170109082025.xijkeym5rqdgfv37@pengutronix.de>
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
Subject: Re: [PATCH] arm: decalare div0 as weak function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Du Huanpeng <u74147@gmail.com>

On Mon, Jan 09, 2017 at 09:20:26AM +0100, Sascha Hauer wrote:
> 
> Could you explain why and in which situations you need this?
hmm... define a new __div0(), or forget about it. :)
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
