Delivery-date: Tue, 08 Feb 2022 09:16:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLg9-009AYm-FY
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 09:16:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLg7-0006qx-Rv
	for lore@pengutronix.de; Tue, 08 Feb 2022 09:16:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O4NfTGtjbqryXFuUPGwPqgCqU1Z1s+EhDRJjyGakBLY=; b=FoMsJyhlsLYTFWLdRpe+5M/hXB
	5FGYpWIgxw5/jy0bNWDe2cmLfroTuAS5vFyAq/UZJXv9UeKan4gK+YifOUw2q99LVQyel0nzknAJx
	0+q7og5H4byMFkY5yYznf/GJDicBAQEKLcz9gdvrtQc0x2GhYiNq2gCRvmeMVQPkOwcxJNC9WwkAA
	4VpaNqgHOBHFxERaSekfUUs10Kbc5aAgF9IW4wevL58nRTXW/PsffcSFG+2diwJvaoM6a3KsEPZJf
	XjoiyUXaP9opNUbCLzBPPdGJG5hEGs/inmBoYAOKM1ipmibDD/kj7eaV7CVmGyqJUHwrb8rGQ/sRO
	ZGcFR6cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHLed-00CtH6-7C; Tue, 08 Feb 2022 08:15:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHLeY-00CtGh-AL
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 08:15:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLeU-0006VX-4D; Tue, 08 Feb 2022 09:15:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLeT-0003pa-Ns; Tue, 08 Feb 2022 09:15:05 +0100
Date: Tue, 8 Feb 2022 09:15:05 +0100
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20220208081505.GK18637@pengutronix.de>
References: <20220207134707.1775213-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207134707.1775213-1-masahiroy@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:14:56 up 59 days, 17:00, 81 users,  load average: 0.02, 0.14, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_001510_387741_69BB459B 
X-CRM114-Status: GOOD (  45.36  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] setlocalversion: update to Linux 5.16
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 10:47:07PM +0900, Masahiro Yamada wrote:
> It has been a long time since this script was updated.
> 
> Now resync it with Linux 5.16.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/setlocalversion | 103 +++++++++++++++-------------------------
>  1 file changed, 39 insertions(+), 64 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/setlocalversion b/scripts/setlocalversion
> index cce4706cc..6b54e46a0 100755
> --- a/scripts/setlocalversion
> +++ b/scripts/setlocalversion
> @@ -1,8 +1,14 @@
>  #!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
>  #
>  # This scripts adds local version information from the version
>  # control systems git, mercurial (hg) and subversion (svn).
>  #
> +# If something goes wrong, send a mail the kernel build mailinglist
> +# (see MAINTAINERS) and CC Nico Schottelius
> +# <nico-linuxsetlocalversion -at- schottelius.org>.
> +#
> +#
>  
>  usage() {
>  	echo "Usage: $0 [--save-scmversion] [srctree]" >&2
> @@ -38,11 +44,12 @@ scm_version()
>  	fi
>  
>  	# Check for git and a git repo.
> -	if test -d .git && head=`git rev-parse --verify --short HEAD 2>/dev/null`; then
> +	if test -z "$(git rev-parse --show-cdup 2>/dev/null)" &&
> +	   head=$(git rev-parse --verify HEAD 2>/dev/null); then
>  
>  		# If we are at a tagged commit (like "v2.6.30-rc6"), we ignore
>  		# it, because this version is defined in the top level Makefile.
> -		if [ -z "`git describe --exact-match 2>/dev/null`" ]; then
> +		if [ -z "$(git describe --exact-match 2>/dev/null)" ]; then
>  
>  			# If only the short version is requested, don't bother
>  			# running further git commands
> @@ -52,69 +59,36 @@ scm_version()
>  			fi
>  			# If we are past a tagged commit (like
>  			# "v2.6.30-rc5-302-g72357d5"), we pretty print it.
> -			if atag="`git describe 2>/dev/null`"; then
> -				echo "$atag" | awk -F- '{printf("-%05d-%s", $(NF-1),$(NF))}'
> -
> -			# If we don't have a tag at all we print -g{commitish}.
> -			else
> -				printf '%s%s' -g $head
> +			if atag="$(git describe 2>/dev/null)"; then
> +				echo "$atag" | awk -F- '{printf("-%05d", $(NF-1))}'
>  			fi
> -		fi
>  
> -		# Is this git on svn?
> -		if git config --get svn-remote.svn.url >/dev/null; then
> -			printf -- '-svn%s' "`git svn find-rev $head`"
> +			# Add -g and exactly 12 hex chars.
> +			printf '%s%s' -g "$(echo $head | cut -c1-12)"
>  		fi
>  
> -		# Update index only on r/w media
> -		[ -w . ] && git update-index --refresh --unmerged > /dev/null
> -
> -		# Check for uncommitted changes
> -		if git diff-index --name-only HEAD | grep -qv "^scripts/package"; then
> +		# Check for uncommitted changes.
> +		# This script must avoid any write attempt to the source tree,
> +		# which might be read-only.
> +		# You cannot use 'git describe --dirty' because it tries to
> +		# create .git/index.lock .
> +		# First, with git-status, but --no-optional-locks is only
> +		# supported in git >= 2.14, so fall back to git-diff-index if
> +		# it fails. Note that git-diff-index does not refresh the
> +		# index, so it may give misleading results. See
> +		# git-update-index(1), git-diff-index(1), and git-status(1).
> +		if {
> +			git --no-optional-locks status -uno --porcelain 2>/dev/null ||
> +			git diff-index --name-only HEAD
> +		} | read dummy; then
>  			printf '%s' -dirty
>  		fi
> -
> -		# All done with git
> -		return
> -	fi
> -
> -	# Check for mercurial and a mercurial repo.
> -	if test -d .hg && hgid=`hg id 2>/dev/null`; then
> -		# Do we have an tagged version?  If so, latesttagdistance == 1
> -		if [ "`hg log -r . --template '{latesttagdistance}'`" == "1" ]; then
> -			id=`hg log -r . --template '{latesttag}'`
> -			printf '%s%s' -hg "$id"
> -		else
> -			tag=`printf '%s' "$hgid" | cut -d' ' -f2`
> -			if [ -z "$tag" -o "$tag" = tip ]; then
> -				id=`printf '%s' "$hgid" | sed 's/[+ ].*//'`
> -				printf '%s%s' -hg "$id"
> -			fi
> -		fi
> -
> -		# Are there uncommitted changes?
> -		# These are represented by + after the changeset id.
> -		case "$hgid" in
> -			*+|*+\ *) printf '%s' -dirty ;;
> -		esac
> -
> -		# All done with mercurial
> -		return
> -	fi
> -
> -	# Check for svn and a svn repo.
> -	if rev=`svn info 2>/dev/null | grep '^Last Changed Rev'`; then
> -		rev=`echo $rev | awk '{print $NF}'`
> -		printf -- '-svn%s' "$rev"
> -
> -		# All done with svn
> -		return
>  	fi
>  }
>  
>  collect_files()
>  {
> -	local file res
> +	local file res=
>  
>  	for file; do
>  		case "$file" in
> @@ -140,7 +114,7 @@ fi
>  if test -e include/config/auto.conf; then
>  	. include/config/auto.conf
>  else
> -	echo "Error: kernelrelease not valid - run 'make prepare' to update it"
> +	echo "Error: kernelrelease not valid - run 'make prepare' to update it" >&2
>  	exit 1
>  fi
>  
> @@ -157,15 +131,16 @@ res="${res}${CONFIG_LOCALVERSION}${LOCALVERSION}"
>  if test "$CONFIG_LOCALVERSION_AUTO" = "y"; then
>  	# full scm version string
>  	res="$res$(scm_version)"
> -else
> -	# append a plus sign if the repository is not in a clean
> -	# annotated or signed tagged state (as git describe only
> -	# looks at signed or annotated tags - git tag -a/-s) and
> -	# LOCALVERSION= is not specified
> -	if test "${LOCALVERSION+set}" != "set"; then
> -		scm=$(scm_version --short)
> -		res="$res${scm:++}"
> -	fi
> +elif [ "${LOCALVERSION+set}" != "set" ]; then
> +	# If the variable LOCALVERSION is not set, append a plus
> +	# sign if the repository is not in a clean annotated or
> +	# signed tagged state (as git describe only looks at signed
> +	# or annotated tags - git tag -a/-s).
> +	#
> +	# If the variable LOCALVERSION is set (including being set
> +	# to an empty string), we don't want to append a plus sign.
> +	scm=$(scm_version --short)
> +	res="$res${scm:++}"
>  fi
>  
>  echo "$res"
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

