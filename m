Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x230.google.com ([2607:f8b0:4003:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zvhhi-0008BP-MD
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 08:21:31 +0000
Received: by oiad129 with SMTP id d129so95452113oia.0
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 00:21:09 -0800 (PST)
Received: from mail.tkernel.org ([69.16.145.45])
 by smtp.gmail.com with ESMTPSA id mj8sm4266072obc.25.2015.11.09.00.21.07
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
 Mon, 09 Nov 2015 00:21:08 -0800 (PST)
Date: Mon, 9 Nov 2015 00:21:01 -0800
From: Du Huanpeng <u74147@gmail.com>
Message-ID: <20151109082101.GA5169@mail.tkernel.org>
References: <1446952576-2228-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446952576-2228-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] fbconsole: move font variable into struct font_desc
To: barebox@lists.infradead.org

On Sat, Nov 07, 2015 at 07:16:16PM -0800, Du Huanpeng wrote:
thanks!
because my next patch will change this line to:

+	int index;
+	if (font->index == NULL) {
+		index  = font->width + 7;
+		index /= 8;
+		index *= font->height;
+		index *= ch;

so, I didn't fix this warning.

- - -
Du Huanpeng


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
