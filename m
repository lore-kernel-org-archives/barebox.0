Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0145.hostedemail.com ([216.40.44.145]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chDiF-0001L9-PH
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 11:07:01 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 85260C2122
 for <barebox@lists.infradead.org>; Fri, 24 Feb 2017 11:06:28 +0000 (UTC)
Received: from [10.0.0.53] (unknown [81.133.34.160])
 (Authenticated sender: ian@abbott.org)
 by omf03.hostedemail.com (Postfix) with ESMTPA
 for <barebox@lists.infradead.org>; Fri, 24 Feb 2017 11:06:27 +0000 (UTC)
References: <20170223170321.16681-1-bst@pengutronix.de>
 <20170224072557.gj2s27cmnozunbuq@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <e56dd833-1e7e-d1be-7c1b-e1193183c6d3@mev.co.uk>
Date: Fri, 24 Feb 2017 11:06:27 +0000
MIME-Version: 1.0
In-Reply-To: <20170224072557.gj2s27cmnozunbuq@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] lib/fonts: add VGA8x8 font
To: barebox@lists.infradead.org

On 24/02/17 07:25, Sascha Hauer wrote:
> On Thu, Feb 23, 2017 at 06:03:21PM +0100, Bastian Stender wrote:
>> Ported from Linux v4.10.
>>
>> This font is ideal for displaying a framebuffer console on a small display.
>>
>> Signed-off-by: Bastian Stender <bst@pengutronix.de>
>
> Applied, thanks
>
> Sascha

I know this is all inherited from Linux, but I find it interesting that 
the non-ASCII characters in the comments are Latin-1 characters 
transcoded to UTF-8, even though the glyphs in the bitmaps are from Code 
Page 437.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
