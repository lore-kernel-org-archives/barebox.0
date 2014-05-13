Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk9Ip-0002I2-PV
 for barebox@lists.infradead.org; Tue, 13 May 2014 09:47:17 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so206258eek.40
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 02:46:52 -0700 (PDT)
Date: Tue, 13 May 2014 11:46:45 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140513094629.GA27037@omega>
References: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
 <1399897462-21433-3-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399897462-21433-3-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 3/4] ARM: omap: barebox update nand xloadslots handler
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Hi,

some hints about your string handling in this code...

On Mon, May 12, 2014 at 02:24:21PM +0200, Wadim Egorov wrote:
...
> +
> +	devfilecopy = (char *)malloc(strlen(data->devicefile));
> +	if (!devfilecopy) {
> +		pr_err("could not allocate enough memory: %s\n", errno_str());
> +		return errno;
> +	}
> +	strcpy(devfilecopy, data->devicefile);
possible buffer overflow detected. "strlen" returns length of string
excluding of the terminate null byte.

Just use xstrdup here.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
