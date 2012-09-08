Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAC1e-0000xG-74
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 03:48:07 +0000
Received: by dajq27 with SMTP id q27so185706daj.36
 for <barebox@lists.infradead.org>; Fri, 07 Sep 2012 20:48:03 -0700 (PDT)
Message-ID: <504ABFEB.3040405@gmail.com>
Date: Sat, 08 Sep 2012 09:17:55 +0530
From: Vikram Narayanan <vikram186@gmail.com>
MIME-Version: 1.0
References: <20120907130700.GS20330@game.jcrosoft.org>
 <1347023425-22462-1-git-send-email-plagnioj@jcrosoft.com>
 <1347023425-22462-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347023425-22462-11-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 11/11] png: add picoPNG lib support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 9/7/2012 6:40 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This is an alternative to LodePNG take fromhttp://forge.voodooprojects.org/
> which is base on picoPNG C++ wrote by Lode Vandevenne. The same author as
> LodePNG.
>
> PicoPNG only support RGBA PNG8
>
> The source code of picopng.c was just adapat to be compliant to C89 and drop
> the internal ZLIB support. Coding style untouched.

s/adapat/adapted

Not "compliant to", should be "compliant with".

>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD<plagnioj@jcrosoft.com>

Could you please fix the entire commit message? There are many 
grammatical errors.

Thanks,
Vikram

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
